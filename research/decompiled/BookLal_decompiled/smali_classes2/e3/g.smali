.class public Le3/g;
.super Landroidx/fragment/app/r;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;


# instance fields
.field public a:Le3/j;

.field public b:Landroid/view/View;

.field public c:Lg3/a;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/ProgressBar;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public l:Le3/e;

.field public final m:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;

.field public o:Le3/f;

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Le3/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pickerType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le3/g;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".listener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le3/g;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Le3/g;->m:Ljava/lang/Boolean;

    iput-object v0, p0, Le3/g;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le3/g;->o:Le3/f;

    if-nez v0, :cond_0

    new-instance v0, Le3/f;

    invoke-direct {v0, p0}, Le3/f;-><init>(Le3/g;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Le3/f;

    iput-object p1, p0, Le3/g;->o:Le3/f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    new-instance v0, Le3/f;

    invoke-direct {v0, p0}, Le3/f;-><init>(Le3/g;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Le3/f;

    iput-object p1, p0, Le3/g;->o:Le3/f;

    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Le3/g;->b:Landroid/view/View;

    const v0, 0x7f0903d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Le3/g;->d:Landroid/widget/EditText;

    iget-object p1, p0, Le3/g;->b:Landroid/view/View;

    const v0, 0x7f0902ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Le3/g;->e:Landroid/widget/ProgressBar;

    iget-object p1, p0, Le3/g;->b:Landroid/view/View;

    const v0, 0x7f0902e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Le3/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v0, p0, Le3/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lu0/F;)V

    iget-object p1, p0, Le3/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LL1/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LL1/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Le3/g;->d:Landroid/widget/EditText;

    new-instance v0, LB2/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LB2/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Le3/g;->p:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const v0, 0x7f120413

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/r;->setStyle(II)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0041

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le3/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Le3/g;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lg3/a;

    iput-object p1, p0, Le3/g;->c:Lg3/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Le3/g;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Le3/j;

    iput-object p1, p0, Le3/g;->a:Le3/j;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le3/g;->p:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/r;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iget-object p2, p0, Le3/g;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Le3/g;->b:Landroid/view/View;

    return-object p1
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/r;->onStart()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le3/g;->g(Ljava/lang/String;)V

    return-void
.end method
