.class public final Lm3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ4/g;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(LQ4/g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/t;->a:LQ4/g;

    iput p2, p0, Lm3/t;->b:I

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 1

    iget-object v0, p0, Lm3/t;->a:LQ4/g;

    invoke-virtual {v0, p1, p2, p3}, LQ4/g;->C([BII)V

    iget p1, p0, Lm3/t;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lm3/t;->b:I

    iget p1, p0, Lm3/t;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lm3/t;->c:I

    return-void
.end method
