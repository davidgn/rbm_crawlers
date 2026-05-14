.class public Lcom/booklal/booklal/AdNotificationActivity;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Lcom/google/firebase/storage/FirebaseStorage;

.field public d:Ljava/lang/String;

.field public e:Landroid/widget/ImageView;

.field public f:Landroidx/appcompat/widget/Toolbar;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/google/firebase/auth/FirebaseAuth;

.field public n:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/i;-><init>()V

    const-string v0, "Ad1"

    iput-object v0, p0, Lcom/booklal/booklal/AdNotificationActivity;->d:Ljava/lang/String;

    const-string v0, "https://play.google.com/store/apps/details?id=com.booklal.booklal"

    iput-object v0, p0, Lcom/booklal/booklal/AdNotificationActivity;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/booklal/booklal/Dashboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    const p1, 0x7f0901bc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->b:Landroid/widget/ImageView;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->f:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->l:Landroid/widget/TextView;

    const-string v0, "BookLal"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->c:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->m:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->n:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "Operate"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    const-string v0, "NOTF"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Impression"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->b:Landroid/widget/ImageView;

    new-instance v0, LY0/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/d;-><init>(Lcom/booklal/booklal/AdNotificationActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/AdNotificationActivity;->e:Landroid/widget/ImageView;

    new-instance v0, LY0/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/d;-><init>(Lcom/booklal/booklal/AdNotificationActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
