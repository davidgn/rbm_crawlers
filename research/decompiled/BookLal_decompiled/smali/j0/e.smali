.class public Lj0/e;
.super Landroidx/lifecycle/S;
.source "SourceFile"


# static fields
.field public static final f:Landroidx/fragment/app/b0;


# instance fields
.field public final d:Lr/l;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/fragment/app/b0;-><init>(I)V

    sput-object v0, Lj0/e;->f:Landroidx/fragment/app/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    new-instance v0, Lr/l;

    invoke-direct {v0}, Lr/l;-><init>()V

    iput-object v0, p0, Lj0/e;->d:Lr/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/e;->e:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    iget-object v0, p0, Lj0/e;->d:Lr/l;

    iget v1, v0, Lr/l;->c:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, v0, Lr/l;->b:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Lj0/c;

    iget-object v5, v4, Lj0/c;->l:Lk0/e;

    invoke-virtual {v5}, Lk0/e;->cancelLoad()Z

    invoke-virtual {v5}, Lk0/e;->abandon()V

    iget-object v6, v4, Lj0/c;->n:Lj0/d;

    if-eqz v6, :cond_0

    invoke-virtual {v4, v6}, Lj0/c;->h(Landroidx/lifecycle/C;)V

    iget-boolean v7, v6, Lj0/d;->b:Z

    if-eqz v7, :cond_0

    iget-object v7, v6, Lj0/d;->d:Ljava/lang/Object;

    check-cast v7, Lj0/a;

    iget-object v8, v6, Lj0/d;->c:Ljava/lang/Object;

    check-cast v8, Lk0/e;

    invoke-interface {v7, v8}, Lj0/a;->onLoaderReset(Lk0/e;)V

    :cond_0
    invoke-virtual {v5, v4}, Lk0/e;->unregisterListener(Lk0/d;)V

    if-eqz v6, :cond_1

    iget-boolean v4, v6, Lj0/d;->b:Z

    :cond_1
    invoke-virtual {v5}, Lk0/e;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v1, v0, Lr/l;->c:I

    iget-object v3, v0, Lr/l;->b:[Ljava/lang/Object;

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput v2, v0, Lr/l;->c:I

    return-void
.end method
