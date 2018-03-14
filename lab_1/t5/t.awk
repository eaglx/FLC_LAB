{
 for(i=1; i<=NF; i++)
 {
  match($i,/[A-Z]\.[A-Z]/)
  if(RSTART > 0)
  {
    printf(substr($i,3)" "substr($i,0,2)" ");
  }
  else
  {
    printf("%s ", $i);
  }
 }
 printf("\n");
}
