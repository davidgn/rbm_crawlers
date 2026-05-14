.class public final LY0/r;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/r;->a:I

    iput-object p1, p0, LY0/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    iget v0, p0, LY0/r;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Take_Book_Information"

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->P:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "Ads"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "RewardedAds"

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

    :pswitch_0
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v0, v0, Lcom/booklal/booklal/RewardAdActivity;->m:Lcom/google/firebase/firestore/FirebaseFirestore;

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

    :pswitch_1
    const-string v0, "RewardedAdActivity"

    const-string v1, "Ad was clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, LB2/e;

    iget-object v0, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v0, LY0/Q;

    iget-object v0, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v0, v0, Lcom/booklal/booklal/RewardAdActivity;->f:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "Ads"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "RewardedAds"

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

    :pswitch_2
    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, LY0/s;

    iget-object v0, v0, LY0/s;->b:Lh/i;

    check-cast v0, Lcom/booklal/booklal/BookAdditionSuccessful;

    iget-object v0, v0, Lcom/booklal/booklal/BookAdditionSuccessful;->l:Lcom/google/firebase/firestore/FirebaseFirestore;

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAdDismissedFullScreenContent()V
    .locals 7

    iget v0, p0, LY0/r;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object v1, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/Take_Book_Information;

    iput-object v0, v1, Lcom/booklal/booklal/Take_Book_Information;->f0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v1}, Lcom/booklal/booklal/Take_Book_Information;->p()V

    iget-boolean v0, v1, Lcom/booklal/booklal/Take_Book_Information;->g0:Z

    if-eqz v0, :cond_0

    iget-wide v2, v1, Lcom/booklal/booklal/Take_Book_Information;->d0:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/booklal/booklal/Take_Book_Information;->g0:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->m:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "users"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, v0, Lcom/booklal/booklal/RewardAdActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    iget-wide v2, v0, Lcom/booklal/booklal/RewardAdActivity;->d:J

    const/4 v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/booklal/booklal/RewardAdActivity;->d:J

    iget-object v6, v0, Lcom/booklal/booklal/RewardAdActivity;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "coins"

    invoke-virtual {v1, v5, v2, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    const-string v1, "TAG"

    const-string v2, "Interstitial dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v2, "Loading Ad..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/booklal/booklal/RewardAdActivity;->t:J

    invoke-virtual {v0}, Lcom/booklal/booklal/RewardAdActivity;->j()V

    return-void

    :pswitch_1
    const-string v0, "RewardedAdActivity"

    const-string v1, "Ad dismissed fullscreen content."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, LB2/e;

    iget-object v1, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v1, LY0/Q;

    iget-object v1, v1, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, v1, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v1, LY0/Q;

    iget-object v1, v1, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v1, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v1, LY0/Q;

    iget-object v1, v1, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v1, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v1, LY0/Q;

    iget-object v1, v1, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v1, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v2, "Loading Ad..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v0, LY0/Q;

    iget-object v0, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    invoke-virtual {v0}, Lcom/booklal/booklal/RewardAdActivity;->j()V

    return-void

    :pswitch_2
    const-string v0, "TAG"

    const-string v1, "Ad dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    iget v0, p0, LY0/r;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    return-void

    :pswitch_0
    const-string p1, "Take_Book_Information"

    const-string v0, "Ad failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/Take_Book_Information;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/booklal/booklal/Take_Book_Information;->f0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p1}, Lcom/booklal/booklal/Take_Book_Information;->p()V

    return-void

    :pswitch_1
    const-string p1, "TAG"

    const-string v0, "The ad failed to show."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p1, "RewardedAdActivity"

    const-string v0, "Ad failed to show fullscreen content."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast p1, LB2/e;

    iget-object p1, p1, LB2/e;->b:Ljava/lang/Object;

    check-cast p1, LY0/Q;

    iget-object p1, p1, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/booklal/booklal/RewardAdActivity;->e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAdImpression()V
    .locals 4

    iget v0, p0, LY0/r;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Take_Book_Information"

    const-string v1, "Ad impression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/Take_Book_Information;

    iget-object v0, v0, Lcom/booklal/booklal/Take_Book_Information;->P:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "Ads"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "RewardedAds"

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

    :pswitch_0
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v0, v0, Lcom/booklal/booklal/RewardAdActivity;->m:Lcom/google/firebase/firestore/FirebaseFirestore;

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

    :pswitch_1
    const-string v0, "RewardedAdActivity"

    const-string v1, "Ad recorded an impression."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, LB2/e;

    iget-object v0, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v0, LY0/Q;

    iget-object v0, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v0, v0, Lcom/booklal/booklal/RewardAdActivity;->f:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "Ads"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "RewardedAds"

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

    :pswitch_2
    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, LY0/s;

    iget-object v0, v0, LY0/s;->b:Lh/i;

    check-cast v0, Lcom/booklal/booklal/BookAdditionSuccessful;

    iget-object v0, v0, Lcom/booklal/booklal/BookAdditionSuccessful;->l:Lcom/google/firebase/firestore/FirebaseFirestore;

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    iget v0, p0, LY0/r;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    return-void

    :pswitch_0
    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/RewardAdActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/booklal/booklal/RewardAdActivity;->o:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string v0, "TAG"

    const-string v1, "The ad was shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string v0, "RewardedAdActivity"

    const-string v1, "Ad showed fullscreen content."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    iget-object v0, p0, LY0/r;->b:Ljava/lang/Object;

    check-cast v0, LY0/s;

    iget-object v0, v0, LY0/s;->b:Lh/i;

    check-cast v0, Lcom/booklal/booklal/BookAdditionSuccessful;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/booklal/booklal/BookAdditionSuccessful;->n:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
