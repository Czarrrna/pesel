class PeselValidate
  def initialize(str1)
    @pesel= str1.split("").map(&:to_i)
  end

private
  def checksum()


    sum = 1*@pesel[0] + 3*@pesel[1] + 7*@pesel[2] + 9*@pesel[3] + 1*@pesel[4] + 3*@pesel[5] + 7*@pesel[6] + 9*@pesel[7] + 1*@pesel[8] + 3*@pesel[9]

    puts sum

    sum %= 10;
    sum = 10 - sum;

    puts sum

    if sum==@pesel[10]
      return true
    else
      return false
    end
  end


public
  def validate()
      valid=true
    if @pesel.length != 11
      valid=false
    elsif checksum()
      valid=true
    else
      valid=false
    end
    puts valid
    return valid
  end
end