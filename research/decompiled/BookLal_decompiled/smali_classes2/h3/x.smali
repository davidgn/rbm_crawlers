.class public final Lh3/x;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lh3/e;


# direct methods
.method public constructor <init>(Lh3/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lh3/x;->a:Lh3/e;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lh3/x;

    iget-object v0, p0, Lh3/x;->a:Lh3/e;

    iget v1, v0, Lh3/e;->w:I

    iget-object p1, p1, Lh3/x;->a:Lh3/e;

    iget v2, p1, Lh3/e;->w:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Lh3/e;->a:I

    iget p1, p1, Lh3/e;->a:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls/e;->d(I)I

    move-result p1

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method
