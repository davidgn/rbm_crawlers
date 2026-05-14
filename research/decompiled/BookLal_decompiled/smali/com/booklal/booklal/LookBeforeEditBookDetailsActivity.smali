.class public Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;
.super Lh/i;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Landroid/widget/Button;

.field public F:Landroid/widget/Button;

.field public G:Ljava/lang/Boolean;

.field public H:Landroid/widget/ImageView;

.field public b:Lcom/google/firebase/storage/FirebaseStorage;

.field public c:Lcom/google/firebase/firestore/FirebaseFirestore;

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

    iput-object v0, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->G:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0028

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bookKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    const p1, 0x7f090215

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f090211

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f090219

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->p:Landroid/widget/TextView;

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f09021d

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->r:Landroid/widget/TextView;

    const p1, 0x7f090220

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->s:Landroid/widget/TextView;

    const p1, 0x7f090217

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->t:Landroid/widget/TextView;

    const p1, 0x7f090210

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->u:Landroid/widget/TextView;

    const p1, 0x7f09020d

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->E:Landroid/widget/Button;

    const p1, 0x7f09020e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->F:Landroid/widget/Button;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->H:Landroid/widget/ImageView;

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->l:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->m:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->l:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->m:Landroid/widget/TextView;

    const-string v0, "BookLal"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f09021a

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/denzcoskun/imageslider/ImageSlider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    iput-object v1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->c:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->c:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "AllBook"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    new-instance v2, LY0/S;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, p1, v3}, LY0/S;-><init>(Lh/i;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v1, p0, v2}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->F:Landroid/widget/Button;

    new-instance v0, LY0/e0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/e0;-><init>(Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->E:Landroid/widget/Button;

    new-instance v0, LY0/e0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/e0;-><init>(Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;->H:Landroid/widget/ImageView;

    new-instance v0, LY0/e0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/e0;-><init>(Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
