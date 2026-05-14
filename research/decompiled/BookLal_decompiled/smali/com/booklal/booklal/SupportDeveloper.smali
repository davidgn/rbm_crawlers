.class public Lcom/booklal/booklal/SupportDeveloper;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public b:Landroidx/appcompat/widget/Toolbar;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/google/firebase/firestore/FirebaseFirestore;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/content/ClipboardManager;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0037

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    const p1, 0x7f09014e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->b:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0903cc

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->c:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object p1

    invoke-virtual {p1}, LZ2/l;->S()V

    const p1, 0x7f090138

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->e:Landroid/widget/ImageView;

    const p1, 0x7f090139

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->f:Landroid/widget/ImageView;

    const p1, 0x7f090163

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->m:Landroid/widget/TextView;

    const p1, 0x7f090164

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->n:Landroid/widget/TextView;

    const p1, 0x7f090389

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->l:Landroid/widget/ImageView;

    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->o:Landroid/content/ClipboardManager;

    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->d:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->d:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    const-string v0, "support_developer"

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    new-instance v0, LY0/c;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LY0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/firestore/DocumentReference;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    :cond_0
    iget-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->e:Landroid/widget/ImageView;

    new-instance v0, LY0/P0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/P0;-><init>(Lcom/booklal/booklal/SupportDeveloper;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->f:Landroid/widget/ImageView;

    new-instance v0, LY0/P0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/P0;-><init>(Lcom/booklal/booklal/SupportDeveloper;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->l:Landroid/widget/ImageView;

    new-instance v0, LY0/P0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/P0;-><init>(Lcom/booklal/booklal/SupportDeveloper;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/SupportDeveloper;->c:Landroid/widget/ImageView;

    new-instance v0, LY0/P0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/P0;-><init>(Lcom/booklal/booklal/SupportDeveloper;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
