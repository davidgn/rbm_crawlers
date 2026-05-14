.class public final LY0/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Dialog;

.field public final synthetic c:LY0/S0;


# direct methods
.method public synthetic constructor <init>(LY0/S0;Landroid/app/Dialog;I)V
    .locals 0

    iput p3, p0, LY0/W0;->a:I

    iput-object p1, p0, LY0/W0;->c:LY0/S0;

    iput-object p2, p0, LY0/W0;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, LY0/W0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/W0;->c:LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/booklal/booklal/Take_Book_Information;->g0:Z

    iget-object p1, p0, LY0/W0;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, LY0/W0;->c:LY0/S0;

    iget-object p1, p1, LY0/S0;->b:Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, p1, Lcom/booklal/booklal/Take_Book_Information;->f0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, LY0/W0;->b:Landroid/app/Dialog;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/booklal/booklal/Take_Book_Information;->h0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p1, Lcom/booklal/booklal/Take_Book_Information;->j0:Z

    new-instance v2, LY0/R0;

    invoke-direct {v2, p1, v1}, LY0/R0;-><init>(Lcom/booklal/booklal/Take_Book_Information;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object v0, p1, Lcom/booklal/booklal/Take_Book_Information;->h0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "Ad is loading, please wait"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Lcom/booklal/booklal/Take_Book_Information;->p()V

    goto :goto_0

    :cond_1
    new-instance v2, LY0/r;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, LY0/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object v0, p1, Lcom/booklal/booklal/Take_Book_Information;->f0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v2, LY0/Q0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v1}, LY0/Q0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
