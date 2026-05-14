.class public final Lj3/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/List;

.field public static final e:Lj3/r0;

.field public static final f:Lj3/r0;

.field public static final g:Lj3/r0;

.field public static final h:Lj3/r0;

.field public static final i:Lj3/r0;

.field public static final j:Lj3/r0;

.field public static final k:Lj3/r0;

.field public static final l:Lj3/r0;

.field public static final m:Lj3/r0;

.field public static final n:Lj3/d0;

.field public static final o:Lj3/d0;


# instance fields
.field public final a:Lj3/q0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lj3/q0;->values()[Lj3/q0;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget v6, v5, Lj3/q0;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lj3/r0;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v8}, Lj3/r0;-><init>(Lj3/q0;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj3/r0;

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code value duplication between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lj3/r0;->a:Lj3/q0;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj3/r0;->d:Ljava/util/List;

    sget-object v0, Lj3/q0;->c:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->e:Lj3/r0;

    sget-object v0, Lj3/q0;->d:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->f:Lj3/r0;

    sget-object v0, Lj3/q0;->e:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->g:Lj3/r0;

    sget-object v0, Lj3/q0;->f:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->l:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->h:Lj3/r0;

    sget-object v0, Lj3/q0;->m:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->n:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->o:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->i:Lj3/r0;

    sget-object v0, Lj3/q0;->x:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->j:Lj3/r0;

    sget-object v0, Lj3/q0;->p:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->k:Lj3/r0;

    sget-object v0, Lj3/q0;->q:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->r:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->s:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->t:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    sget-object v0, Lj3/q0;->u:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->l:Lj3/r0;

    sget-object v0, Lj3/q0;->v:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    sput-object v0, Lj3/r0;->m:Lj3/r0;

    sget-object v0, Lj3/q0;->w:Lj3/q0;

    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    new-instance v0, Lj3/n;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lj3/n;-><init>(I)V

    new-instance v1, Lj3/d0;

    const-string v2, "grpc-status"

    invoke-direct {v1, v2, v3, v0}, Lj3/d0;-><init>(Ljava/lang/String;ZLj3/e0;)V

    sput-object v1, Lj3/r0;->n:Lj3/d0;

    new-instance v0, Lj3/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj3/n;-><init>(I)V

    new-instance v1, Lj3/d0;

    const-string v2, "grpc-message"

    invoke-direct {v1, v2, v3, v0}, Lj3/d0;-><init>(Ljava/lang/String;ZLj3/e0;)V

    sput-object v1, Lj3/r0;->o:Lj3/d0;

    return-void
.end method

.method public constructor <init>(Lj3/q0;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj3/r0;->a:Lj3/q0;

    iput-object p2, p0, Lj3/r0;->b:Ljava/lang/String;

    iput-object p3, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static c(Lj3/r0;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj3/r0;->b:Ljava/lang/String;

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj3/r0;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Lj3/r0;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lj3/r0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj3/r0;

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lj3/r0;->g:Lj3/r0;

    invoke-virtual {v0, p0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Lj3/r0;
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lj3/s0;

    if-eqz v1, :cond_0

    check-cast v0, Lj3/s0;

    iget-object p0, v0, Lj3/s0;->a:Lj3/r0;

    return-object p0

    :cond_0
    instance-of v1, v0, Lj3/t0;

    if-eqz v1, :cond_1

    check-cast v0, Lj3/t0;

    iget-object p0, v0, Lj3/t0;->a:Lj3/r0;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lj3/r0;->g:Lj3/r0;

    invoke-virtual {v0, p0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lj3/t0;
    .locals 2

    new-instance v0, Lj3/t0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj3/t0;-><init>(Lj3/r0;Lj3/f0;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lj3/r0;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    iget-object v2, p0, Lj3/r0;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Lj3/r0;

    invoke-direct {v2, v1, p1, v0}, Lj3/r0;-><init>(Lj3/q0;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    new-instance v3, Lj3/r0;

    const-string v4, "\n"

    invoke-static {v2, v4, p1}, LC/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1, v0}, Lj3/r0;-><init>(Lj3/q0;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public final f()Z
    .locals 2

    sget-object v0, Lj3/q0;->c:Lj3/q0;

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Ljava/lang/Throwable;)Lj3/r0;
    .locals 3

    iget-object v0, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj3/r0;

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    iget-object v2, p0, Lj3/r0;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lj3/r0;-><init>(Lj3/q0;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lj3/r0;
    .locals 3

    iget-object v0, p0, Lj3/r0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj3/r0;

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    iget-object v2, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lj3/r0;-><init>(Lj3/q0;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget-object v1, p0, Lj3/r0;->a:Lj3/q0;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    iget-object v2, p0, Lj3/r0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    sget-object v2, LJ2/l;->a:Ljava/lang/Object;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
