.class public Lcom/booklal/booklal/StatsActivity;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public e:J

.field public f:J

.field public l:Landroidx/appcompat/widget/Toolbar;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Z

.field public s:Lcom/google/android/gms/ads/AdView;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lh/i;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/booklal/booklal/StatsActivity;->e:J

    iput-wide v0, p0, Lcom/booklal/booklal/StatsActivity;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/booklal/booklal/StatsActivity;->r:Z

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 5

    iget-object v0, p0, Lcom/booklal/booklal/StatsActivity;->d:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "AllBook"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, p0, Lcom/booklal/booklal/StatsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    iget-wide v1, p0, Lcom/booklal/booklal/StatsActivity;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Impressions"

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-wide v3, p0, Lcom/booklal/booklal/StatsActivity;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Visits"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0036

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bookKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->b:Ljava/lang/String;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->l:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->m:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/booklal/booklal/StatsActivity;->l:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/booklal/booklal/StatsActivity;->n:Landroid/widget/TextView;

    const-string v0, "BookLal"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f0900c0

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f0901e4

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->p:Landroid/widget/TextView;

    const p1, 0x7f090120

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->d:Lcom/google/firebase/firestore/FirebaseFirestore;

    new-instance p1, LY0/p;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LY0/p;-><init>(I)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/booklal/booklal/StatsActivity;->s:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/StatsActivity;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/StatsActivity;->s:Lcom/google/android/gms/ads/AdView;

    new-instance v0, LY0/q;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LY0/q;-><init>(Lh/i;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/StatsActivity;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/StatsActivity;->d:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "AllBook"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    iget-object v0, p0, Lcom/booklal/booklal/StatsActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/c;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/StatsActivity;->m:Landroid/widget/ImageView;

    new-instance v0, LB2/e;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, LB2/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
