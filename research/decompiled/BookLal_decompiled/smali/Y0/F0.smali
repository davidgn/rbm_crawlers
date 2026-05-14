.class public final LY0/F0;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/ads/AdRequest;

.field public final synthetic c:Lh/i;


# direct methods
.method public synthetic constructor <init>(Lh/i;Lcom/google/android/gms/ads/AdRequest;I)V
    .locals 0

    iput p3, p0, LY0/F0;->a:I

    iput-object p1, p0, LY0/F0;->c:Lh/i;

    iput-object p2, p0, LY0/F0;->b:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    iget p1, p0, LY0/F0;->a:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "Take_Book_Information"

    const-string v0, "Rewarded failed \u2192 loading interstitial"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iget-object v0, p0, LY0/F0;->c:Lh/i;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iput-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->f0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const p1, 0x7f110001

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, LY0/s;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, LY0/s;-><init>(Lh/i;I)V

    iget-object v2, p0, LY0/F0;->b:Lcom/google/android/gms/ads/AdRequest;

    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    iget-object v0, p0, LY0/F0;->c:Lh/i;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iput-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v1, "Watch Ad"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f110001

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, LY0/s;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LY0/s;-><init>(Lh/i;I)V

    iget-object v2, p0, LY0/F0;->b:Lcom/google/android/gms/ads/AdRequest;

    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAdLoaded(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LY0/F0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v0, p0, LY0/F0;->c:Lh/i;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iput-object p1, v0, Lcom/booklal/booklal/Take_Book_Information;->f0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/booklal/booklal/Take_Book_Information;->i0:Z

    const-string p1, "Take_Book_Information"

    const-string v0, "Rewarded ad preloaded"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v0, p0, LY0/F0;->c:Lh/i;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->r:Landroid/os/Handler;

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->s:LB/a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v0, "Watch Ad & Earn Coins"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
