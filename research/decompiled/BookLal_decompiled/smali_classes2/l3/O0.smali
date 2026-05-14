.class public final Ll3/O0;
.super Ll3/X;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/ref/ReferenceQueue;

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final b:Ll3/N0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ll3/O0;->c:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ll3/O0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Ll3/O0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/O0;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ll3/L0;)V
    .locals 3

    sget-object v0, Ll3/O0;->c:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Ll3/O0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ll3/X;-><init>(Ll3/L0;)V

    new-instance v2, Ll3/N0;

    invoke-direct {v2, p0, p1, v0, v1}, Ll3/N0;-><init>(Ll3/O0;Ll3/L0;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v2, p0, Ll3/O0;->b:Ll3/N0;

    return-void
.end method


# virtual methods
.method public final l()Lj3/V;
    .locals 3

    iget-object v0, p0, Ll3/O0;->b:Ll3/N0;

    iget-object v1, v0, Ll3/N0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ll3/N0;->clear()V

    :cond_0
    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->u()V

    return-object v0
.end method

.method public final m()Lj3/V;
    .locals 3

    iget-object v0, p0, Ll3/O0;->b:Ll3/N0;

    iget-object v1, v0, Ll3/N0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ll3/N0;->clear()V

    :cond_0
    iget-object v0, p0, Ll3/X;->a:Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->m()Lj3/V;

    return-object v0
.end method
