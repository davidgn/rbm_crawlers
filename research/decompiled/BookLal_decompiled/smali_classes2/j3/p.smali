.class public final Lj3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lj3/p;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-instance v1, Lj3/p;

    new-instance v2, Lj3/n;

    invoke-direct {v2, v0}, Lj3/n;-><init>(I)V

    new-array v0, v0, [Lj3/o;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lj3/n;->b:Lj3/n;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Lj3/p;-><init>([Lj3/o;)V

    sput-object v1, Lj3/p;->b:Lj3/p;

    return-void
.end method

.method public varargs constructor <init>([Lj3/o;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj3/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lj3/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Lj3/o;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
