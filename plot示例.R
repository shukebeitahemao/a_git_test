dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
opar <- par(no.readonly=TRUE)
par(lty=2,pch=17)
plot(dose,drugA,type='b')
par(opar)
plot(dose,drugA,type='b',lty=1,lwd=2,pch=15,cex=0.75,col='red',fg='blue')
n <- 10
mycolors <- rainbow(n)
pie(rep(1,n),labels=mycolors,col=mycolors)
dev.new()
mygrays <- grey(0:n/n)
pie(rep(1,n),labels=mygrays,col=mygrays)
windowsFonts(
  A = windowsFont('Arial Black'),
  B = windowsFont('Bookman Old Style'),
  C = windowsFont('Comic Sans MS')
)
par(font.main=2,cex.main=1,2,col.axis='blue',family='B')

#pdf('C:/Users/shukebeitahemao/desktop/myplot2.pdf')
plot(dose,drugA,type='b')
title(main='DRUG',line=1,outer =FALSE)
ls()



plot(dose,drugA,type='b',pin=c(4,3),mai=c(1,1,1,1))
par(opar)
#dev.off()
x <- c(1:10)
y <- x
z <- 10/x
opar <- par(no.readonly = TRUE)
par(mar=c(5,4,4,8)+0.1)
plot(x~y,type='b',pch=21,col='red',yaxt='n',lty=3,ann=FALSE)
lines(x,z,type='b',pch=22,col='blue',lty=2)
axis(2,at=x,labels=x,col.axis='red',las=2)
axis(4,at=z,labels=round(z,digits=2),col='blue',las=2,cex.axis=0.7,tck=-.01)
mtext('Y=10/X',side=4,line=3,cex.lab=1,las=2,col='blue')
title('An Example of Creative Axis',xlab='X values',ylab='Y values',font.main=2)
abline(h=1,col='green')
#通过mtext功能代替xlab ylab，实现对xlab和ylab的精确控制
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
par(opar)
opar <- par(no.readonly=TRUE)
par(lwd=2,cex=1.5,font.lab=2)
plot(dose,drugA,type='b',
     pch=15,lty=1,col='red',,ylim=c(0,60),main='Drug A vs Drug B',
     xlab='Drug Dosage',ylab= 'Drug Response')
lines(dose,drugB,type='b',pch=17,lty=2,col='blue')
abline(h=c(30),lwd=1.5,col='gray')
legend('topleft',inset=0.05,title='Drug Type',
       c('A','B'),lty=c(1,2),pch=c(15,17),col=c('red','blue'),cex=1)
par(opar)

