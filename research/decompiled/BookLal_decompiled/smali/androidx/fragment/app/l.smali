.class public abstract Landroidx/fragment/app/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/v0;

.field public final b:LI/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/v0;LI/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    iput-object p2, p0, Landroidx/fragment/app/l;->b:LI/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    iget-object v1, v0, Landroidx/fragment/app/v0;->e:Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/fragment/app/l;->b:LI/f;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/v0;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/v0;

    iget-object v1, v0, Landroidx/fragment/app/v0;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, LC/a;->c(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroidx/fragment/app/v0;->a:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
