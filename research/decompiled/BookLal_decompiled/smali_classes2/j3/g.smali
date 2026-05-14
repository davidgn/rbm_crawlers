.class public final Lj3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lj3/g;


# instance fields
.field public final a:Lj3/v;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lj3/e;

.field public final d:[[Ljava/lang/Object;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj3/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v1, v2, v1

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iput-object v1, v0, Lj3/f;->d:[[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lj3/f;->e:Ljava/util/List;

    new-instance v1, Lj3/g;

    invoke-direct {v1, v0}, Lj3/g;-><init>(Lj3/f;)V

    sput-object v1, Lj3/g;->i:Lj3/g;

    return-void
.end method

.method public constructor <init>(Lj3/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lj3/f;->a:Lj3/v;

    iput-object v0, p0, Lj3/g;->a:Lj3/v;

    iget-object v0, p1, Lj3/f;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lj3/g;->b:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lj3/f;->c:Lj3/e;

    iput-object v0, p0, Lj3/g;->c:Lj3/e;

    iget-object v0, p1, Lj3/f;->d:[[Ljava/lang/Object;

    iput-object v0, p0, Lj3/g;->d:[[Ljava/lang/Object;

    iget-object v0, p1, Lj3/f;->e:Ljava/util/List;

    iput-object v0, p0, Lj3/g;->e:Ljava/util/List;

    iget-object v0, p1, Lj3/f;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lj3/g;->f:Ljava/lang/Boolean;

    iget-object v0, p1, Lj3/f;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lj3/g;->g:Ljava/lang/Integer;

    iget-object p1, p1, Lj3/f;->h:Ljava/lang/Integer;

    iput-object p1, p0, Lj3/g;->h:Ljava/lang/Integer;

    return-void
.end method

.method public static b(Lj3/g;)Lj3/f;
    .locals 2

    new-instance v0, Lj3/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lj3/g;->a:Lj3/v;

    iput-object v1, v0, Lj3/f;->a:Lj3/v;

    iget-object v1, p0, Lj3/g;->b:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lj3/f;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lj3/g;->c:Lj3/e;

    iput-object v1, v0, Lj3/f;->c:Lj3/e;

    iget-object v1, p0, Lj3/g;->d:[[Ljava/lang/Object;

    iput-object v1, v0, Lj3/f;->d:[[Ljava/lang/Object;

    iget-object v1, p0, Lj3/g;->e:Ljava/util/List;

    iput-object v1, v0, Lj3/f;->e:Ljava/util/List;

    iget-object v1, p0, Lj3/g;->f:Ljava/lang/Boolean;

    iput-object v1, v0, Lj3/f;->f:Ljava/lang/Boolean;

    iget-object v1, p0, Lj3/g;->g:Ljava/lang/Integer;

    iput-object v1, v0, Lj3/f;->g:Ljava/lang/Integer;

    iget-object p0, p0, Lj3/g;->h:Ljava/lang/Integer;

    iput-object p0, v0, Lj3/f;->h:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a(LG3/b;)Ljava/lang/Object;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lj3/g;->d:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object p1, v2, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(LG3/b;Ljava/lang/Object;)Lj3/g;
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lj3/g;->b(Lj3/g;)Lj3/f;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lj3/g;->d:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    array-length v4, v3

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    add-int/2addr v4, v7

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v7, v8, v6

    aput v4, v8, v1

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    iput-object v4, v0, Lj3/f;->d:[[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_3

    iget-object v1, v0, Lj3/f;->d:[[Ljava/lang/Object;

    array-length v2, v3

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lj3/f;->d:[[Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    :goto_3
    new-instance p1, Lj3/g;

    invoke-direct {p1, v0}, Lj3/g;-><init>(Lj3/f;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "deadline"

    iget-object v2, p0, Lj3/g;->a:Lj3/v;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authority"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callCredentials"

    iget-object v3, p0, Lj3/g;->c:Lj3/e;

    invoke-virtual {v0, v3, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lj3/g;->b:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "executor"

    invoke-virtual {v0, v1, v3}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "compressorName"

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lj3/g;->d:[[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lj3/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, LE4/d;->e(Ljava/lang/String;Z)V

    const-string v1, "maxInboundMessageSize"

    iget-object v2, p0, Lj3/g;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxOutboundMessageSize"

    iget-object v2, p0, Lj3/g;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streamTracerFactories"

    iget-object v2, p0, Lj3/g;->e:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
