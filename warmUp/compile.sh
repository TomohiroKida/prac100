HS=${1}
COMPILE="ghc --make ${HS}"
RM="rm *.o *hi"

if [ ${HS} = clean ]; then 
    ${RM}
    echo ${RM}
else
    ${COMPILE}
    echo ${COMPILE}
fi
