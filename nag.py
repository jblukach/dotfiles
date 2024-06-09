#!/home/codespace/.python/current/bin/python

import pathlib

rules = []
output = pathlib.Path.joinpath(pathlib.Path().absolute(),'cdk.out')
for p in pathlib.Path(output).glob('*'):
    if p.name.startswith('AwsSolutions') or p.name.startswith('HIPAA.Security') \
      or p.name.startswith('NIST.800.53.R5') or p.name.startswith('PCI.DSS.321'):
        read = pathlib.Path.joinpath(output,p.name)
        with open(read) as f:
            f.readline()
            for line in f:
                parse = line.split('"')
                if parse[1] not in rules:
                    rules.append(parse[1])
                    print('\t\t{"id":"'+parse[1]+'","reason":"'+parse[11]+'"},') 
