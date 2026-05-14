.class public final Lm3/i;
.super Ll3/e0;
.source "SourceFile"

# interfaces
.implements Lm3/u;


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public final E:Lm3/d;

.field public final F:Lm3/w;

.field public final G:Lm3/n;

.field public H:Z

.field public final I:Ly3/c;

.field public J:Lm3/v;

.field public K:I

.field public final synthetic L:Lm3/j;

.field public final v:I

.field public final w:Ljava/lang/Object;

.field public x:Ljava/util/ArrayList;

.field public final y:LQ4/g;

.field public z:Z


# direct methods
.method public constructor <init>(Lm3/j;ILl3/N1;Ljava/lang/Object;Lm3/d;Lm3/w;Lm3/n;I)V
    .locals 0

    iput-object p1, p0, Lm3/i;->L:Lm3/j;

    iget-object p1, p1, Ll3/b;->c:Ll3/R1;

    invoke-direct {p0, p2, p3, p1}, Ll3/a;-><init>(ILl3/N1;Ll3/R1;)V

    sget-object p1, LJ2/c;->b:Ljava/nio/charset/Charset;

    iput-object p1, p0, Ll3/e0;->s:Ljava/nio/charset/Charset;

    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/i;->y:LQ4/g;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm3/i;->z:Z

    iput-boolean p1, p0, Lm3/i;->A:Z

    iput-boolean p1, p0, Lm3/i;->B:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm3/i;->H:Z

    const/4 p1, -0x1

    iput p1, p0, Lm3/i;->K:I

    const-string p1, "lock"

    invoke-static {p4, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lm3/i;->w:Ljava/lang/Object;

    iput-object p5, p0, Lm3/i;->E:Lm3/d;

    iput-object p6, p0, Lm3/i;->F:Lm3/w;

    iput-object p7, p0, Lm3/i;->G:Lm3/n;

    iput p8, p0, Lm3/i;->C:I

    iput p8, p0, Lm3/i;->D:I

    iput p8, p0, Lm3/i;->v:I

    sget-object p1, Ly3/b;->a:Ly3/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ly3/a;->a:Ly3/c;

    iput-object p1, p0, Lm3/i;->I:Ly3/c;

    return-void
.end method

.method public static j(Lm3/i;Lj3/f0;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x1

    iget-object v1, p0, Lm3/i;->L:Lm3/j;

    iget-object v2, v1, Lm3/j;->m:Ljava/lang/String;

    iget-boolean v3, v1, Lm3/j;->q:Z

    iget-object v4, p0, Lm3/i;->G:Lm3/n;

    iget-object v5, v4, Lm3/n;->B:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    sget-object v7, Lm3/e;->a:Lo3/b;

    const-string v7, "headers"

    invoke-static {p1, v7}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "defaultPath"

    invoke-static {p2, v7}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "authority"

    invoke-static {v2, v7}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ll3/b0;->i:Lj3/a0;

    invoke-virtual {p1, v7}, Lj3/f0;->a(Lj3/c0;)V

    sget-object v7, Ll3/b0;->j:Lj3/a0;

    invoke-virtual {p1, v7}, Lj3/f0;->a(Lj3/c0;)V

    sget-object v7, Ll3/b0;->k:Lj3/a0;

    invoke-virtual {p1, v7}, Lj3/f0;->a(Lj3/c0;)V

    new-instance v8, Ljava/util/ArrayList;

    iget v9, p1, Lj3/f0;->b:I

    add-int/lit8 v9, v9, 0x7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_1

    sget-object v5, Lm3/e;->b:Lo3/b;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v5, Lm3/e;->a:Lo3/b;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v3, :cond_2

    sget-object v3, Lm3/e;->d:Lo3/b;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v3, Lm3/e;->c:Lo3/b;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v3, Lo3/b;

    sget-object v5, Lo3/b;->h:LQ4/j;

    invoke-direct {v3, v5, v2}, Lo3/b;-><init>(LQ4/j;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo3/b;

    sget-object v3, Lo3/b;->f:LQ4/j;

    invoke-direct {v2, v3, p2}, Lo3/b;-><init>(LQ4/j;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lo3/b;

    iget-object v2, v7, Lj3/c0;->a:Ljava/lang/String;

    iget-object v3, v1, Lm3/j;->k:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lo3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lm3/e;->e:Lo3/b;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lm3/e;->f:Lo3/b;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Ll3/Q1;->a:Ljava/util/logging/Logger;

    sget-object p2, Lj3/K;->a:Ljava/nio/charset/Charset;

    iget p2, p1, Lj3/f0;->b:I

    mul-int/lit8 p2, p2, 0x2

    new-array v2, p2, [[B

    iget-object v3, p1, Lj3/f0;->a:[Ljava/lang/Object;

    instance-of v5, v3, [[B

    if-eqz v5, :cond_3

    invoke-static {v3, v6, v2, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    move v3, v6

    :goto_3
    iget v5, p1, Lj3/f0;->b:I

    if-ge v3, v5, :cond_5

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p1, v3}, Lj3/f0;->e(I)[B

    move-result-object v7

    aput-object v7, v2, v5

    add-int/2addr v5, v0

    iget-object v7, p1, Lj3/f0;->a:[Ljava/lang/Object;

    aget-object v7, v7, v5

    instance-of v9, v7, [B

    if-eqz v9, :cond_4

    check-cast v7, [B

    aput-object v7, v2, v5

    add-int/2addr v3, v0

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/a;->l(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_4
    move p1, v6

    move v3, p1

    :goto_5
    if-ge p1, p2, :cond_a

    aget-object v5, v2, p1

    add-int/lit8 v7, p1, 0x1

    aget-object v7, v2, v7

    sget-object v9, Ll3/Q1;->b:[B

    invoke-static {v5, v9}, Ll3/Q1;->a([B[B)Z

    move-result v9

    if-eqz v9, :cond_6

    aput-object v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    sget-object v9, Lj3/K;->b:LL2/c;

    invoke-virtual {v9, v7}, LL2/e;->c([B)Ljava/lang/String;

    move-result-object v7

    sget-object v9, LJ2/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    aput-object v7, v2, v5

    :goto_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_6
    array-length v9, v7

    move v10, v6

    :goto_7
    if-ge v10, v9, :cond_9

    aget-byte v11, v7, v10

    const/16 v12, 0x20

    if-lt v11, v12, :cond_8

    const/16 v12, 0x7e

    if-le v11, v12, :cond_7

    goto :goto_8

    :cond_7
    add-int/2addr v10, v0

    goto :goto_7

    :cond_8
    :goto_8
    new-instance v9, Ljava/lang/String;

    sget-object v10, LJ2/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v5, "Metadata key="

    const-string v10, ", value="

    invoke-static {v5, v9, v10}, Lcom/google/android/gms/ads/internal/util/client/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " contains invalid ASCII characters"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ll3/Q1;->a:Ljava/util/logging/Logger;

    invoke-virtual {v7, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    aput-object v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    aput-object v7, v2, v5

    goto :goto_6

    :goto_9
    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_a
    if-ne v3, p2, :cond_b

    goto :goto_a

    :cond_b
    invoke-static {v2, v6, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [[B

    :goto_a
    move p1, v6

    :goto_b
    array-length p2, v2

    if-ge p1, p2, :cond_e

    aget-object p2, v2, p1

    invoke-static {p2}, LQ4/j;->h([B)LQ4/j;

    move-result-object p2

    iget-object v3, p2, LQ4/j;->a:[B

    array-length v5, v3

    if-eqz v5, :cond_d

    aget-byte v3, v3, v6

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 v3, p1, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, LQ4/j;->h([B)LQ4/j;

    move-result-object v3

    new-instance v5, Lo3/b;

    invoke-direct {v5, p2, v3}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_c
    add-int/lit8 p1, p1, 0x2

    goto :goto_b

    :cond_e
    iput-object v8, p0, Lm3/i;->x:Ljava/util/ArrayList;

    iget-object p0, v4, Lm3/n;->v:Lj3/r0;

    if-eqz p0, :cond_f

    sget-object p1, Ll3/t;->d:Ll3/t;

    new-instance p2, Lj3/f0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object v1, v1, Lm3/j;->n:Lm3/i;

    invoke-virtual {v1, p0, p1, v0, p2}, Ll3/a;->f(Lj3/r0;Ll3/t;ZLj3/f0;)V

    goto :goto_d

    :cond_f
    iget-object p0, v4, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    iget p1, v4, Lm3/n;->C:I

    if-lt p0, p1, :cond_11

    iget-object p0, v4, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, v4, Lm3/n;->z:Z

    if-nez p0, :cond_10

    iput-boolean v0, v4, Lm3/n;->z:Z

    iget-object p0, v4, Lm3/n;->F:Ll3/u0;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ll3/u0;->b()V

    :cond_10
    iget-boolean p0, v1, Ll3/b;->e:Z

    if-eqz p0, :cond_12

    iget-object p0, v4, Lm3/n;->M:Ll3/h0;

    invoke-virtual {p0, v1, v0}, LB/y;->f(Ljava/lang/Object;Z)V

    goto :goto_d

    :cond_11
    invoke-virtual {v4, v1}, Lm3/n;->t(Lm3/j;)V

    :cond_12
    :goto_d
    return-void
.end method

.method public static k(Lm3/i;LQ4/g;ZZ)V
    .locals 4

    iget-boolean v0, p0, Lm3/i;->B:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lm3/i;->H:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, LQ4/g;->b:J

    long-to-int v0, v0

    iget-object v1, p0, Lm3/i;->y:LQ4/g;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, LQ4/g;->o(LQ4/g;J)V

    iget-boolean p1, p0, Lm3/i;->z:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lm3/i;->z:Z

    iget-boolean p1, p0, Lm3/i;->A:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lm3/i;->A:Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lm3/i;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Lm3/i;->F:Lm3/w;

    iget-object p0, p0, Lm3/i;->J:Lm3/v;

    invoke-virtual {v0, p2, p0, p1, p3}, Lm3/w;->a(ZLm3/v;LQ4/g;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget v0, p0, Lm3/i;->D:I

    sub-int/2addr v0, p1

    iput v0, p0, Lm3/i;->D:I

    int-to-float p1, v0

    iget v1, p0, Lm3/i;->v:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    iget p1, p0, Lm3/i;->C:I

    add-int/2addr p1, v1

    iput p1, p0, Lm3/i;->C:I

    add-int/2addr v0, v1

    iput v0, p0, Lm3/i;->D:I

    iget p1, p0, Lm3/i;->K:I

    int-to-long v0, v1

    iget-object v2, p0, Lm3/i;->E:Lm3/d;

    invoke-virtual {v2, p1, v0, v1}, Lm3/d;->g(IJ)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 8

    iget-boolean v0, p0, Ll3/a;->n:Z

    sget-object v4, Ll3/t;->a:Ll3/t;

    if-nez v0, :cond_0

    iget-object v1, p0, Lm3/i;->G:Lm3/n;

    iget v2, p0, Lm3/i;->K:I

    sget-object v6, Lo3/a;->n:Lo3/a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Lm3/n;->i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lm3/i;->G:Lm3/n;

    iget v2, p0, Lm3/i;->K:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lm3/n;->i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V

    :goto_0
    iget-boolean v0, p0, Ll3/a;->o:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/a;->l:Z

    iget-boolean v1, p0, Ll3/a;->p:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string v1, "Encountered end-of-stream mid-frame"

    invoke-virtual {p1, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    new-instance v1, Lj3/f0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Ll3/a;->g(Lj3/r0;ZLj3/f0;)V

    :cond_1
    iget-object p1, p0, Ll3/a;->m:LU0/p;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LU0/p;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Ll3/a;->m:LU0/p;

    :cond_2
    return-void
.end method

.method public final l(Lj3/r0;ZLj3/f0;)V
    .locals 8

    iget-boolean v0, p0, Lm3/i;->B:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm3/i;->B:Z

    iget-boolean v1, p0, Lm3/i;->H:Z

    if-eqz v1, :cond_2

    iget-object p2, p0, Lm3/i;->G:Lm3/n;

    iget-object v1, p2, Lm3/n;->D:Ljava/util/LinkedList;

    iget-object v2, p0, Lm3/i;->L:Lm3/j;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v2}, Lm3/n;->n(Lm3/j;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lm3/i;->x:Ljava/util/ArrayList;

    iget-object p2, p0, Lm3/i;->y:LQ4/g;

    invoke-virtual {p2}, LQ4/g;->b()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lm3/i;->H:Z

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lj3/f0;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Ll3/a;->g(Lj3/r0;ZLj3/f0;)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lm3/i;->K:I

    sget-object v4, Ll3/t;->a:Ll3/t;

    sget-object v6, Lo3/a;->n:Lo3/a;

    iget-object v1, p0, Lm3/i;->G:Lm3/n;

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lm3/n;->i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V

    :goto_1
    return-void
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lj3/r0;->e(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    new-instance v0, Lj3/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lm3/i;->l(Lj3/r0;ZLj3/f0;)V

    return-void
.end method

.method public final n(LQ4/g;Z)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p1, LQ4/g;->b:J

    long-to-int v4, v2

    iget v5, p0, Lm3/i;->C:I

    sub-int/2addr v5, v4

    iput v5, p0, Lm3/i;->C:I

    if-gez v5, :cond_0

    iget p1, p0, Lm3/i;->K:I

    sget-object p2, Lo3/a;->e:Lo3/a;

    iget-object v0, p0, Lm3/i;->E:Lm3/d;

    invoke-virtual {v0, p1, p2}, Lm3/d;->f(ILo3/a;)V

    iget v2, p0, Lm3/i;->K:I

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string p2, "Received data size exceeded our receiving window size"

    invoke-virtual {p1, p2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    sget-object v4, Ll3/t;->a:Ll3/t;

    iget-object v1, p0, Lm3/i;->G:Lm3/n;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lm3/n;->i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V

    return-void

    :cond_0
    new-instance v4, Lm3/r;

    invoke-direct {v4, p1}, Lm3/r;-><init>(LQ4/g;)V

    iget-object v5, p0, Ll3/e0;->q:Lj3/r0;

    if-eqz v5, :cond_2

    iget-object v0, p0, Ll3/e0;->s:Ljava/nio/charset/Charset;

    sget-object v2, Ll3/j1;->a:Ll3/i1;

    const-string v2, "charset"

    invoke-static {v0, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p1, LQ4/g;->b:J

    long-to-int p1, v2

    new-array v2, p1, [B

    invoke-virtual {v4, v1, v2, p1}, Lm3/r;->g(I[BI)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "DATA-----------------------------\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    invoke-virtual {v4}, Lm3/r;->close()V

    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    iget-object p1, p1, Lj3/r0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_9

    :cond_1
    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    iget-object p2, p0, Ll3/e0;->r:Lj3/f0;

    invoke-virtual {p0, p1, v1, p2}, Lm3/i;->l(Lj3/r0;ZLj3/f0;)V

    goto/16 :goto_4

    :cond_2
    iget-boolean p1, p0, Ll3/e0;->t:Z

    if-nez p1, :cond_3

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string p2, "headers not received before payload"

    invoke-virtual {p1, p2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    new-instance p2, Lj3/f0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v1, p2}, Lm3/i;->l(Lj3/r0;ZLj3/f0;)V

    goto/16 :goto_4

    :cond_3
    long-to-int p1, v2

    :try_start_0
    iget-boolean v2, p0, Ll3/a;->o:Z

    if-eqz v2, :cond_4

    sget-object v2, Ll3/b;->i:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Received data on closed stream"

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lm3/r;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :try_start_1
    iget-object v2, p0, Ll3/a;->a:Ll3/V0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v2}, Ll3/V0;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, v2, Ll3/V0;->t:Z

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v2, Ll3/V0;->q:Ll3/y;

    invoke-virtual {v3, v4}, Ll3/y;->u(Ll3/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ll3/V0;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v2, v1

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_1

    :cond_6
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Lm3/r;->close()V

    goto :goto_2

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lm3/r;->close()V

    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Lm3/i;->m(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_2
    if-eqz p2, :cond_9

    if-lez p1, :cond_8

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string p2, "Received unexpected EOS on non-empty DATA frame from server"

    invoke-virtual {p1, p2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    goto :goto_3

    :cond_8
    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string p2, "Received unexpected EOS on empty DATA frame from server"

    invoke-virtual {p1, p2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    :goto_3
    new-instance p1, Lj3/f0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/e0;->r:Lj3/f0;

    iget-object p2, p0, Ll3/e0;->q:Lj3/r0;

    invoke-virtual {p0, p2, v1, p1}, Ll3/a;->g(Lj3/r0;ZLj3/f0;)V

    :cond_9
    :goto_4
    return-void

    :catchall_4
    move-exception p1

    move v0, v1

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lm3/r;->close()V

    :cond_a
    throw p1
.end method

.method public final o(Ljava/util/ArrayList;Z)V
    .locals 5

    sget-object v0, Ll3/e0;->u:Lj3/d0;

    if-eqz p2, :cond_7

    invoke-static {p1}, Lm3/x;->a(Ljava/util/ArrayList;)[[B

    move-result-object p1

    new-instance p2, Lj3/f0;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v1, p2, Lj3/f0;->b:I

    iput-object p1, p2, Lj3/f0;->a:[Ljava/lang/Object;

    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ll3/e0;->t:Z

    if-nez p1, :cond_0

    invoke-static {p2}, Ll3/e0;->i(Lj3/f0;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    if-eqz p1, :cond_0

    iput-object p2, p0, Ll3/e0;->r:Lj3/f0;

    :cond_0
    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "trailers: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    iget-object p2, p0, Ll3/e0;->r:Lj3/f0;

    invoke-virtual {p0, p1, v1, p2}, Lm3/i;->l(Lj3/r0;ZLj3/f0;)V

    goto/16 :goto_4

    :cond_1
    sget-object p1, Lj3/L;->b:Lj3/d0;

    invoke-virtual {p2, p1}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/r0;

    if-eqz v2, :cond_2

    sget-object v3, Lj3/L;->a:Lj3/d0;

    invoke-virtual {p2, v3}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Ll3/e0;->t:Z

    if-eqz v2, :cond_3

    sget-object v2, Lj3/r0;->g:Lj3/r0;

    const-string v3, "missing GRPC status in response"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ll3/b0;->g(I)Lj3/r0;

    move-result-object v2

    goto :goto_0

    :cond_4
    sget-object v2, Lj3/r0;->l:Lj3/r0;

    const-string v3, "missing HTTP status code"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    :goto_0
    const-string v3, "missing GRPC status, inferred error from HTTP status code"

    invoke-virtual {v2, v3}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v0}, Lj3/f0;->a(Lj3/c0;)V

    invoke-virtual {p2, p1}, Lj3/f0;->a(Lj3/c0;)V

    sget-object p1, Lj3/L;->a:Lj3/d0;

    invoke-virtual {p2, p1}, Lj3/f0;->a(Lj3/c0;)V

    iget-boolean p1, p0, Ll3/a;->o:Z

    if-eqz p1, :cond_5

    sget-object p1, Ll3/b;->i:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "Received trailers on closed stream:\n {1}\n {2}"

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Ll3/a;->h:Ll3/N1;

    iget-object p1, p1, Ll3/N1;->a:[Lj3/B;

    array-length v0, p1

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2, v1, p2}, Ll3/a;->g(Lj3/r0;ZLj3/f0;)V

    goto/16 :goto_4

    :cond_7
    invoke-static {p1}, Lm3/x;->a(Ljava/util/ArrayList;)[[B

    move-result-object p1

    new-instance p2, Lj3/f0;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v1, p2, Lj3/f0;->b:I

    iput-object p1, p2, Lj3/f0;->a:[Ljava/lang/Object;

    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    const-string v1, "headers: "

    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    goto/16 :goto_4

    :cond_8
    :try_start_0
    iget-boolean p1, p0, Ll3/e0;->t:Z

    if-eqz p1, :cond_9

    sget-object p1, Lj3/r0;->l:Lj3/r0;

    const-string v0, "Received headers twice"

    invoke-virtual {p1, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;

    iput-object p2, p0, Ll3/e0;->r:Lj3/f0;

    invoke-static {p2}, Ll3/e0;->h(Lj3/f0;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->s:Ljava/nio/charset/Charset;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_9
    :try_start_1
    invoke-virtual {p2, v0}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xc8

    if-ge p1, v2, :cond_a

    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const/4 p1, 0x1

    :try_start_2
    iput-boolean p1, p0, Ll3/e0;->t:Z

    invoke-static {p2}, Ll3/e0;->i(Lj3/f0;)Lj3/r0;

    move-result-object p1

    iput-object p1, p0, Ll3/e0;->q:Lj3/r0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    :try_start_3
    invoke-virtual {p2, v0}, Lj3/f0;->a(Lj3/c0;)V

    sget-object p1, Lj3/L;->b:Lj3/d0;

    invoke-virtual {p2, p1}, Lj3/f0;->a(Lj3/c0;)V

    sget-object p1, Lj3/L;->a:Lj3/d0;

    invoke-virtual {p2, p1}, Lj3/f0;->a(Lj3/c0;)V

    invoke-virtual {p0, p2}, Ll3/a;->d(Lj3/f0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Ll3/e0;->q:Lj3/r0;

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    :goto_4
    return-void

    :goto_5
    iget-object v0, p0, Ll3/e0;->q:Lj3/r0;

    if-eqz v0, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    iput-object v0, p0, Ll3/e0;->q:Lj3/r0;

    iput-object p2, p0, Ll3/e0;->r:Lj3/f0;

    invoke-static {p2}, Ll3/e0;->h(Lj3/f0;)Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, p0, Ll3/e0;->s:Ljava/nio/charset/Charset;

    :cond_d
    throw p1
.end method
