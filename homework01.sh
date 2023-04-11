#!/bin/bash

PORT=5555

check_port() {
	    netstat -tuln | grep "$PORT"
    }
    check_port

    if [ $? -eq 0 ]; then
	      echo "포트 $PORT 가 이미 열려 있습니다."
	        exit 0
    fi

 
    echo "포트 $PORT 가 닫혀 있습니다. 포트를 열겠습니다..."
 
    check_port
:
    if [ $? -eq 0 ]; then
	      echo "포트 $PORT 가 성공적으로 열렸습니다."
      else
	        echo "포트 $PORT 를 열지 못했습니다. 오류가 발생했을 수 있습니다."
    fi
