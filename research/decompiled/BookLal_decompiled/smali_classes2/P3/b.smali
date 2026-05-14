.class public final LP3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[LP3/c;

.field public c:J


# direct methods
.method public constructor <init>(ILP3/l;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LP3/b;->a:I

    new-array v0, p1, [LP3/c;

    iput-object v0, p0, LP3/b;->b:[LP3/c;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, LP3/b;->b:[LP3/c;

    new-instance v2, LP3/c;

    invoke-direct {v2, p2}, LP3/j;-><init>(LP3/l;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
