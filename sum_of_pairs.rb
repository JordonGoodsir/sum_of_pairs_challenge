def sum_pairs(ints, s) 
    norm_value = 0 
    change_value = 1 
    answer = [] 
    found = false 

    loop do   

    if change_value >= ints.length  
        break 
        
    elsif (ints[norm_value] + ints[change_value]) == s  
        answer.push(ints[norm_value]) 
        answer.push(ints[change_value])  
        break 

    else  
        change_value+=1 
        norm_value+=1
    end  

    end  

    if answer.length == 2 
     found = true
    end

    norm_value = 0
    change_value = 0 

    #to optimize try and move "if found" out of this loop

if found == false
    loop do   
        if change_value == norm_value 
        change_value += 1

        elsif norm_value >= ints.length  
            break   

        elsif change_value == ints.length 
            norm_value += 1 
            case norm_value 

            when 0 
                change_value = 1 
            when 1..Float::INFINITY 
                change_value = 0 
            end 

        elsif (ints[norm_value] + ints[change_value]) == s  
            answer.push(ints[norm_value]) 
            answer.push(ints[change_value])  
            break   

        else  
            change_value += 1
        end  
    end  
end
    
    

    if answer.length == 2 
        p answer  
    else 
       return nil
    end  

end 


l1= [20, 4, 20, 20, 20, 2]  
l3= [20, -13, 40] 
l5 =[10, 5, 2, 3, 7, 5]

sum_pairs(l5, 10) 

