#!/usr/bin/perl

# PERL BASICS

# (sections are divided by three empty lines between them)



# $ for scalar variable, a single value like a string or a number
$hello = "hi mom";

# string interpolation
print "$hello, perl is cool! \n";



my $local = "I am a local variable";
our $global = "I am a global variable";



# @ for array, a collection of values
@nums = (10, 20, 30);

# the index of any item in the array can be accessed with brackets
@nums[1];  



# % for hash, key-value pairs
%friends = ('Larry', 67, 'Ken', 79);

# Use braces to access one of its keys
%friends{'Larry'};



# "things that are different, should look different"



# conditionals 
if (5 > 10) {
    print "hi";
}

# can be refactored to one-liners
print "hi" if 5 > 10;

# and can be made even more concise using the ternary operator
$result = (5 > 10)? "hi" : "bye";



# functions in Perl are defined as subroutines
sub PerlCanBeFun {
    print "this is  function\n";

    # instead of defining parameters within parentheses,
    # any arguments passed to the function can be accessed
    # with the @_ array
    my ($n1, $n2) = @_;

    print $n1 + $n2;
}

PerlCanBeFun(2, 3);



# regex is built-in for parsing text
# the binding operator =~ can be used to match a string 
# to a regular expression
if ($text =~ /cool/) {
    # do this
}



# autovivification: bring missing data to life
# if we try to increment the value in an array 
# that doesn't exist, it will automatically bring
# to life all the elements in between
@counter = (1..10);
$counter[20++];
$len = @counter;
print $len;



# to run code either made the script executable and simple
# run it in the folder
# $ ./basics.pl

# or run the interpreter
# $ perl basics.pl