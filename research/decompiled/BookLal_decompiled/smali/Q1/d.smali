.class public final LQ1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/net/URL;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, LQ1/d;->a:I

    .line 5
    iput-object p2, p0, LQ1/d;->c:Ljava/lang/Object;

    .line 6
    iput-wide p3, p0, LQ1/d;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
