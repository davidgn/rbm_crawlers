.class public final LY0/s;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh/i;


# direct methods
.method public synthetic constructor <init>(Lh/i;I)V
    .locals 0

    iput p2, p0, LY0/s;->a:I

    iput-object p1, p0, LY0/s;->b:Lh/i;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget v0, p0, LY0/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, LY0/s;->b:Lh/i;

    check-cast p1, Lcom/booklal/booklal/Take_Book_Information;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/booklal/booklal/Take_Book_Information;->h0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/booklal/booklal/Take_Book_Information;->i0:Z

    const-string p1, "Take_Book_Information"

    const-string v0, "Interstitial failed to load"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v0, "interstitialAd"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LY0/s;->b:Lh/i;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->o:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void

    :pswitch_1
    iget-object p1, p0, LY0/s;->b:Lh/i;

    check-cast p1, Lcom/booklal/booklal/BookAdditionSuccessful;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/booklal/booklal/BookAdditionSuccessful;->n:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAdLoaded(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LY0/s;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, LY0/s;->b:Lh/i;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iput-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->h0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/booklal/booklal/Take_Book_Information;->j0:Z

    iput-boolean p1, v0, Lcom/booklal/booklal/Take_Book_Information;->i0:Z

    const-string p1, "Take_Book_Information"

    const-string v0, "Interstitial ad preloaded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, LY0/s;->b:Lh/i;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->r:Landroid/os/Handler;

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->s:LB/a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v2, "Watch Ad & Earn Coins"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->o:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string p1, "interstitialAd"

    const-string v0, "onAdLoaded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, LY0/s;->b:Lh/i;

    check-cast v0, Lcom/booklal/booklal/BookAdditionSuccessful;

    iput-object p1, v0, Lcom/booklal/booklal/BookAdditionSuccessful;->n:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    new-instance v1, LY0/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LY0/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object p1, v0, Lcom/booklal/booklal/BookAdditionSuccessful;->n:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
