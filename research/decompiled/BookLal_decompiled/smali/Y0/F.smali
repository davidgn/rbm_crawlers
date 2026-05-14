.class public final synthetic LY0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/booklal/booklal/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Dashboard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/F;->a:Lcom/booklal/booklal/Dashboard;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, LY0/F;->a:Lcom/booklal/booklal/Dashboard;

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->O:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->F0:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    iget-object p2, p1, Lcom/booklal/booklal/Dashboard;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x0

    sput p2, Lcom/booklal/booklal/Dashboard;->H0:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/booklal/booklal/Dashboard;->B0:Lcom/google/firebase/firestore/DocumentSnapshot;

    iput-boolean p2, p1, Lcom/booklal/booklal/Dashboard;->c0:Z

    iget-object v0, p1, Lcom/booklal/booklal/Dashboard;->A0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/booklal/booklal/Dashboard;->N:LY0/j;

    invoke-virtual {v0}, Lu0/y;->d()V

    iget-object v0, p1, Lcom/booklal/booklal/Dashboard;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, LY0/E;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LY0/E;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
