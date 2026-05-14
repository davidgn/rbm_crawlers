.class public final Ll3/N1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lj3/B;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/N1;

    const/4 v1, 0x0

    new-array v1, v1, [Lj3/B;

    invoke-direct {v0, v1}, Ll3/N1;-><init>([Lj3/B;)V

    return-void
.end method

.method public constructor <init>([Lj3/B;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ll3/N1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ll3/N1;->a:[Lj3/B;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Ll3/N1;->a:[Lj3/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
