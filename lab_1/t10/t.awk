{ for(i=1; i<=NF; i++)
 {
   if($i != 0)
   {
     if(i==NF) printf("%d\n", $i);
     else printf("%dx^%d+",$i,NF-1);
   }
 }
}
