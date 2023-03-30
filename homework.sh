o "숫자를 입력하시오 >>"
read num
        if [ $num -lt 0 ]
    then
    		echo "음수:" "$num"
        elif [ $num -gt 0 ]
    then
                echo "양수:" "$num"
        else
        echo "The number is 0:" "$num"
	fi
