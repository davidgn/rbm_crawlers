.class public final Landroidx/lifecycle/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# static fields
.field public static final n:Landroidx/lifecycle/G;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/v;

.field public final l:LB/a;

.field public final m:LK0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/G;

    invoke-direct {v0}, Landroidx/lifecycle/G;-><init>()V

    sput-object v0, Landroidx/lifecycle/G;->n:Landroidx/lifecycle/G;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/G;->d:Z

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/v;

    new-instance v0, LB/a;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LB/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/G;->l:LB/a;

    new-instance v0, LK0/j;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/G;->m:LK0/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/G;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/G;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/G;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/G;->e:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/G;->l:LB/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/G;->f:Landroidx/lifecycle/v;

    return-object v0
.end method
