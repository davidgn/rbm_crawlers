.class public abstract Lu0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu0/z;

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu0/z;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, Lu0/y;->a:Lu0/z;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu0/y;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lu0/y;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lu0/y;->a:Lu0/z;

    invoke-virtual {v0}, Lu0/z;->b()V

    return-void
.end method

.method public abstract e(Lu0/W;I)V
.end method

.method public abstract f(Landroid/view/ViewGroup;I)Lu0/W;
.end method

.method public g(Lu0/W;)V
    .locals 0

    return-void
.end method
