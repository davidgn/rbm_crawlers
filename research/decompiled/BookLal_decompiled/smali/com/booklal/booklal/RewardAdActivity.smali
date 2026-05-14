.class public Lcom/booklal/booklal/RewardAdActivity;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:J

.field public e:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field public f:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public l:Landroid/widget/Button;

.field public m:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public n:Ljava/lang/String;

.field public o:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field public p:Landroid/widget/ProgressBar;

.field public q:Landroid/widget/TextView;

.field public final r:Landroid/os/Handler;

.field public s:LB/a;

.field public t:J

.field public final u:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lh/i;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/booklal/booklal/RewardAdActivity;->d:J

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/booklal/booklal/RewardAdActivity;->r:Landroid/os/Handler;

    iput-wide v0, p0, Lcom/booklal/booklal/RewardAdActivity;->t:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/booklal/booklal/RewardAdActivity;->u:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const v1, 0x7f110006

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LY0/F0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, LY0/F0;-><init>(Lh/i;Lcom/google/android/gms/ads/AdRequest;I)V

    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    new-instance v0, LB/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LB/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/booklal/booklal/RewardAdActivity;->s:LB/a;

    iget-object v1, p0, Lcom/booklal/booklal/RewardAdActivity;->r:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0030

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->f:Lcom/google/firebase/firestore/FirebaseFirestore;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->b:Landroid/widget/ImageView;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "BookLal Coins"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090127

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->c:Landroid/widget/TextView;

    const p1, 0x7f090408

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const p1, 0x7f090095

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    const p1, 0x7f09020a

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v1, "Loading Ad..."

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/booklal/booklal/RewardAdActivity;->j()V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->n:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->m:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->m:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v1, p0, Lcom/booklal/booklal/RewardAdActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->f:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/RewardAdActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentReference;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, LY0/Q;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/Q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/RewardAdActivity;->b:Landroid/widget/ImageView;

    new-instance v0, LB2/e;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lh/i;->onDestroy()V

    iget-object v0, p0, Lcom/booklal/booklal/RewardAdActivity;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/booklal/booklal/RewardAdActivity;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
