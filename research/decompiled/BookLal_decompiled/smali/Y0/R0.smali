.class public final LY0/R0;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/booklal/booklal/Take_Book_Information;Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LY0/R0;->a:I

    .line 2
    iput-object p1, p0, LY0/R0;->c:Ljava/lang/Object;

    iput-object p2, p0, LY0/R0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LY0/R0;->a:I

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    iput-object p1, p0, LY0/R0;->b:Ljava/lang/Object;

    iput-object p2, p0, LY0/R0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 4

    iget v0, p0, LY0/R0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    return-void

    :pswitch_0
    const-string v0, "Take_Book_Information"

    const-string v1, "Interstitial clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LY0/R0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->P:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "Ads"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "InterstitialAds"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "adClicks"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAdDismissedFullScreenContent()V
    .locals 7

    iget v0, p0, LY0/R0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY0/R0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, LY0/R0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LY0/R0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-boolean v1, v0, Lcom/booklal/booklal/Take_Book_Information;->j0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/booklal/booklal/Take_Book_Information;->j0:Z

    iget-wide v3, v0, Lcom/booklal/booklal/Take_Book_Information;->d0:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/booklal/booklal/Take_Book_Information;->d0:J

    iget-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->R:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v3, "users"

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v3, v0, Lcom/booklal/booklal/Take_Book_Information;->O:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "coins"

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    iget-object v1, p0, LY0/R0;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/booklal/booklal/Take_Book_Information;->h0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0}, Lcom/booklal/booklal/Take_Book_Information;->p()V

    iget-boolean v1, v0, Lcom/booklal/booklal/Take_Book_Information;->g0:Z

    if-eqz v1, :cond_1

    iget-wide v3, v0, Lcom/booklal/booklal/Take_Book_Information;->d0:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    iput-boolean v2, v0, Lcom/booklal/booklal/Take_Book_Information;->g0:Z

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->C:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAdImpression()V
    .locals 4

    iget v0, p0, LY0/R0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    return-void

    :pswitch_0
    iget-object v0, p0, LY0/R0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->P:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "Ads"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "InterstitialAds"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "impressions"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    iget v0, p0, LY0/R0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    return-void

    :pswitch_0
    iget-object v0, p0, LY0/R0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, LY0/R0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
