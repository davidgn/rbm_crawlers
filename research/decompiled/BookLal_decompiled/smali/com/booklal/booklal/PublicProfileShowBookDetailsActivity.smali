.class public Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Landroid/widget/Button;

.field public E:Landroid/widget/Button;

.field public F:Ljava/lang/Boolean;

.field public G:Ljava/lang/String;

.field public H:Landroid/widget/ImageView;

.field public I:Ljava/lang/String;

.field public J:Lcom/google/android/gms/ads/AdView;

.field public K:Ljava/lang/String;

.field public L:Landroid/widget/ImageView;

.field public M:Landroid/widget/TextView;

.field public b:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public l:Landroidx/appcompat/widget/Toolbar;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->F:Ljava/lang/Boolean;

    return-void
.end method

.method public static j(Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;Ljava/lang/String;)Lh/f;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LG4/n;

    invoke-direct {v0, p0}, LG4/n;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v1, Lh/b;

    const-string v2, "Report Book"

    iput-object v2, v1, Lh/b;->e:Ljava/lang/CharSequence;

    const-string v2, "Do you want to report this listing?"

    iput-object v2, v1, Lh/b;->g:Ljava/lang/String;

    const v2, 0x7f080333

    iput v2, v1, Lh/b;->c:I

    new-instance v2, LY0/Y;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, LY0/Y;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    const-string p0, "Report"

    iput-object p0, v1, Lh/b;->h:Ljava/lang/String;

    iput-object v2, v1, Lh/b;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance p0, LY0/f0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LY0/f0;-><init>(I)V

    const-string p1, "Cancel"

    iput-object p1, v1, Lh/b;->j:Ljava/lang/String;

    iput-object p0, v1, Lh/b;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, LG4/n;->a()Lh/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 6

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "AllBook"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Visits"

    invoke-virtual {v0, v5, v2, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Impressions"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bookKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->c:Ljava/lang/String;

    const p1, 0x7f0902cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f0902c8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f0902d0

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->p:Landroid/widget/TextView;

    const p1, 0x7f0902d8

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f0902d3

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->r:Landroid/widget/TextView;

    const p1, 0x7f0902d6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->s:Landroid/widget/TextView;

    const p1, 0x7f0902ce

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->t:Landroid/widget/TextView;

    const p1, 0x7f0902c7

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->u:Landroid/widget/TextView;

    const p1, 0x7f0902c5

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->D:Landroid/widget/Button;

    const p1, 0x7f0902c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->E:Landroid/widget/Button;

    const p1, 0x7f090307

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->L:Landroid/widget/ImageView;

    const p1, 0x7f090308

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->M:Landroid/widget/TextView;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->H:Landroid/widget/ImageView;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->l:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->m:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->l:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->m:Landroid/widget/TextView;

    const-string v0, "BookLal"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f0902bd

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/denzcoskun/imageslider/ImageSlider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LY0/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LY0/p;-><init>(I)V

    invoke-static {p0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->J:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->J:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->K:Ljava/lang/String;

    iget-object v1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->J:Lcom/google/android/gms/ads/AdView;

    new-instance v2, LY0/q;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LY0/q;-><init>(Lh/i;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    iput-object v1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "AllBook"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    new-instance v2, LY0/S;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, p1, v3}, LY0/S;-><init>(Lh/i;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v1, p0, v2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->M:Landroid/widget/TextView;

    new-instance v0, LY0/E0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/E0;-><init>(Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->L:Landroid/widget/ImageView;

    new-instance v0, LY0/E0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/E0;-><init>(Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->H:Landroid/widget/ImageView;

    new-instance v0, LY0/E0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/E0;-><init>(Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->E:Landroid/widget/Button;

    new-instance v0, LY0/E0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/E0;-><init>(Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;->D:Landroid/widget/Button;

    new-instance v0, LY0/E0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LY0/E0;-><init>(Lcom/booklal/booklal/PublicProfileShowBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
