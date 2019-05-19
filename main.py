from subprocess import call

call(['sh','compile.sh','compile','annexes'])

call(['sh','compile.sh','compile','main'])
call(['git','commit','-a','-m','\"update on pycharm\"'])
call(['git','push'])

# call(['sh','compile.sh','compile','analysis'])
# call(['sh','compile.sh','compile','analysis_2'])


