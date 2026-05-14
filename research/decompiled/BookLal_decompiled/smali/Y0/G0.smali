.class public final LY0/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, LY0/G0;->a:I

    iput-object p1, p0, LY0/G0;->c:Ljava/lang/Object;

    iput-wide p2, p0, LY0/G0;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, LY0/G0;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LC4/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LC4/v;-><init>(I)V

    iget-object v1, p0, LY0/G0;->c:Ljava/lang/Object;

    check-cast v1, Ll3/r;

    iget-object v2, v1, Ll3/r;->j:Ll3/s;

    invoke-interface {v2, v0}, Ll3/s;->n(LC4/v;)V

    iget-wide v2, p0, LY0/G0;->b:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    div-long/2addr v4, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    rem-long/2addr v9, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deadline exceeded after "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    const/16 v2, 0x2d

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, ".%09d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s. "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ll3/r;->j:Ll3/s;

    sget-object v1, Lj3/r0;->h:Lj3/r0;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/s;->d(Lj3/r0;)V

    return-void

    :pswitch_0
    iget-wide v0, p0, LY0/G0;->b:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    iget-object v5, p0, LY0/G0;->c:Ljava/lang/Object;

    check-cast v5, Lcom/booklal/booklal/RewardAdActivity;

    if-gtz v4, :cond_2

    iget-object v0, v5, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/booklal/booklal/RewardAdActivity;->j()V

    iget-object v0, v5, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v1, "Loading Ad..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, v5, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v1, "Watch Ad & Earn Coins"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, v5, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Next reward in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, LY0/G0;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, LY0/G0;->b:J

    iget-object v0, v5, Lcom/booklal/booklal/RewardAdActivity;->u:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
