#!/usr/bin/perl
#I got this off of somebody else's perl github repo and added some modifications
#cleaned up the name array, added some things. added a plural name array
#also added a subroutine to ranomly pick something from an array.
#
#My purpose here is to make a program that calculates some sort of payroll
print "-----lets calculate That payroll, you poor poor person!-----\n\n";
@pname = ("grocers","hamsters","trumptards","vegans");
@name = ("monkey","person","Chad","justice beaver"); #array of names I will call out through
@payola = ("beans", "bananas", "pennies", "frozen chickens", "Chuck E Cheeze Coins","Schrute Bucks");

# Lets make a subroutine!
sub Rando{
    $count = (scalar @_); #get length of array as an argument
    $rname = int(rand($count)); #random number from that length
    return @_[$rname]; #return the item in the array
}

print "Now it's ok if you are a ", Rando(@name), ", we respect your kind too. Now
tell me, what is your hourly pay rate?";
print " or enter Zero to quit: ";
chomp($rate = <STDIN>);   # Stores there hourly rate through the users keyboard


while ($rate > 0){ #while rate is greater than zero all the code down below will run

if ($rate < 10) {  #if the rate is less than 10, it will assume your fucked
	print "\nDamn even ", Rando(@pname) ," make more money than you.......................";
}else{
	print "\nOh ", Rando(@payola), ", I see you ain't getting herbed like the ", Rando(@pname),"....";
}

#pop(@name); #cuts out mexicans out of the array
print "\nHow many hours did you work, ", Rando(@name), "? ";
chomp($hours = <STDIN>); #Stores the hours worked


if ($hours > 40){       #checks to see if your a mexican
	print "\n\nOh so you are a hardworking ", Rando(@name), ". ";
    $premium =($hours - 40)* $rate/2 ;
}else {
    $premium = 0;
}

#------------------------------------------------------------------------------
$gross = $hours * $rate + $premium;  #simple calculations
print "\nSo you said that your hourly rate is $rate and your hours worked are $hours";
print "\nYour ", Rando(@name), " gross pay = $gross ", Rando(@payola), "...Go cry your self to sleep.\n\n\n";


#Iteration

print "\n\n~Enter your hourly pay rate";
print " or enter Zero to quit:";

chomp($rate = <STDIN>);

}


exit;
