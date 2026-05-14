.class public final LC4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:LC4/y;

.field public final b:LC4/w;

.field public final c:Ljava/lang/String;

.field public final d:LC4/D;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:LC4/w;

.field public final h:LC4/u;

.field public final i:J

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LL4/n;->a:LL4/n;

    sget-object v0, LL4/n;->a:LL4/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, LC4/e;->k:Ljava/lang/String;

    sget-object v0, LL4/n;->a:LL4/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, LC4/e;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LC4/I;)V
    .locals 11

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, LC4/I;->a:LC4/F;

    iget-object v1, v0, LC4/F;->c:Ljava/lang/Object;

    check-cast v1, LC4/y;

    .line 55
    iput-object v1, p0, LC4/e;->a:LC4/y;

    .line 56
    iget-object v1, p1, LC4/I;->m:LC4/I;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    .line 57
    iget-object v1, v1, LC4/I;->a:LC4/F;

    iget-object v1, v1, LC4/F;->d:Ljava/lang/Object;

    check-cast v1, LC4/w;

    .line 58
    iget-object v2, p1, LC4/I;->f:LC4/w;

    invoke-static {v2}, LW2/B;->B(LC4/w;)Ljava/util/Set;

    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, LD4/c;->b:LC4/w;

    goto :goto_1

    .line 60
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-virtual {v1}, LC4/w;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    .line 62
    invoke-virtual {v1, v7}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 64
    invoke-virtual {v1, v7}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {v8}, LL4/d;->e(Ljava/lang/String;)V

    .line 66
    invoke-static {v9, v8}, LL4/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v9}, Ls4/e;->e0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 69
    :cond_2
    new-instance v1, LC4/w;

    .line 70
    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 71
    invoke-direct {v1, v3}, LC4/w;-><init>([Ljava/lang/String;)V

    .line 72
    :goto_1
    iput-object v1, p0, LC4/e;->b:LC4/w;

    .line 73
    iget-object v0, v0, LC4/F;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LC4/e;->c:Ljava/lang/String;

    .line 74
    iget-object v0, p1, LC4/I;->b:LC4/D;

    iput-object v0, p0, LC4/e;->d:LC4/D;

    .line 75
    iget v0, p1, LC4/I;->d:I

    iput v0, p0, LC4/e;->e:I

    .line 76
    iget-object v0, p1, LC4/I;->c:Ljava/lang/String;

    iput-object v0, p0, LC4/e;->f:Ljava/lang/String;

    .line 77
    iput-object v2, p0, LC4/e;->g:LC4/w;

    .line 78
    iget-object v0, p1, LC4/I;->e:LC4/u;

    iput-object v0, p0, LC4/e;->h:LC4/u;

    .line 79
    iget-wide v0, p1, LC4/I;->p:J

    iput-wide v0, p0, LC4/e;->i:J

    .line 80
    iget-wide v0, p1, LC4/I;->q:J

    iput-wide v0, p0, LC4/e;->j:J

    return-void
.end method

.method public constructor <init>(LQ4/y;)V
    .locals 12

    const/4 v0, 0x0

    const-string v1, "Cache corruption for "

    const-string v2, "rawSource"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    .line 3
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    .line 4
    :try_start_1
    new-instance v7, LC4/x;

    invoke-direct {v7}, LC4/x;-><init>()V

    invoke-virtual {v7, v6, v5}, LC4/x;->c(LC4/y;Ljava/lang/String;)V

    invoke-virtual {v7}, LC4/x;->a()LC4/y;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_7

    .line 5
    :try_start_2
    iput-object v7, p0, LC4/e;->a:LC4/y;

    .line 6
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, p0, LC4/e;->c:Ljava/lang/String;

    .line 8
    new-instance v1, LC4/v;

    invoke-direct {v1, v0}, LC4/v;-><init>(I)V

    .line 9
    invoke-static {v2}, LW2/B;->x(LQ4/s;)I

    move-result v5

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 10
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v1, v8}, LC4/v;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 12
    :cond_0
    invoke-virtual {v1}, LC4/v;->e()LC4/w;

    move-result-object v1

    iput-object v1, p0, LC4/e;->b:LC4/w;

    .line 13
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, LZ2/l;->P(Ljava/lang/String;)LH4/h;

    move-result-object v1

    .line 15
    iget-object v5, v1, LH4/h;->c:Ljava/lang/Object;

    check-cast v5, LC4/D;

    iput-object v5, p0, LC4/e;->d:LC4/D;

    .line 16
    iget v5, v1, LH4/h;->b:I

    iput v5, p0, LC4/e;->e:I

    .line 17
    iget-object v1, v1, LH4/h;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, LC4/e;->f:Ljava/lang/String;

    .line 18
    new-instance v1, LC4/v;

    invoke-direct {v1, v0}, LC4/v;-><init>(I)V

    .line 19
    invoke-static {v2}, LW2/B;->x(LQ4/s;)I

    move-result v5

    move v7, v0

    :goto_2
    if-ge v7, v5, :cond_1

    .line 20
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v1, v8}, LC4/v;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 22
    :cond_1
    sget-object v5, LC4/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v5}, LC4/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    sget-object v8, LC4/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v8}, LC4/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-virtual {v1, v5}, LC4/v;->i(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v8}, LC4/v;->i(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_2

    .line 26
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_3

    :cond_2
    move-wide v7, v10

    :goto_3
    iput-wide v7, p0, LC4/e;->i:J

    if-eqz v9, :cond_3

    .line 27
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    :cond_3
    iput-wide v10, p0, LC4/e;->j:J

    .line 28
    invoke-virtual {v1}, LC4/v;->e()LC4/w;

    move-result-object v1

    iput-object v1, p0, LC4/e;->g:LC4/w;

    .line 29
    iget-object v1, p0, LC4/e;->a:LC4/y;

    iget-object v1, v1, LC4/y;->a:Ljava/lang/String;

    .line 30
    const-string v5, "https"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    .line 33
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v1

    .line 34
    sget-object v5, LC4/n;->b:LC4/b;

    invoke-virtual {v5, v1}, LC4/b;->c(Ljava/lang/String;)LC4/n;

    move-result-object v1

    .line 35
    invoke-static {v2}, LC4/e;->a(LQ4/s;)Ljava/util/List;

    move-result-object v5

    .line 36
    invoke-static {v2}, LC4/e;->a(LQ4/s;)Ljava/util/List;

    move-result-object v7

    .line 37
    invoke-virtual {v2}, LQ4/s;->b()Z

    move-result v8

    if-nez v8, :cond_4

    .line 38
    invoke-virtual {v2, v3, v4}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, LZ2/l;->v(Ljava/lang/String;)LC4/M;

    move-result-object v2

    goto :goto_4

    .line 40
    :cond_4
    sget-object v2, LC4/M;->f:LC4/M;

    .line 41
    :goto_4
    invoke-static {v5}, LD4/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 42
    new-instance v4, LC4/u;

    invoke-static {v7}, LD4/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v7, LC4/s;

    invoke-direct {v7, v3, v0}, LC4/s;-><init>(Ljava/util/List;I)V

    invoke-direct {v4, v2, v1, v5, v7}, LC4/u;-><init>(LC4/M;LC4/n;Ljava/util/List;Lk4/a;)V

    .line 43
    iput-object v4, p0, LC4/e;->h:LC4/u;

    goto :goto_5

    .line 44
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_6
    iput-object v6, p0, LC4/e;->h:LC4/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :goto_5
    invoke-static {p1, v6}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v1, LL4/n;->a:LL4/n;

    .line 49
    sget-object v1, LL4/n;->a:LL4/n;

    .line 50
    const-string v2, "cache corruption"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    invoke-static {v1, v2, v0}, LL4/n;->i(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    :goto_6
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(LQ4/s;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, LW2/B;->x(LQ4/s;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p0, LZ3/p;->a:LZ3/p;

    return-object p0

    :cond_0
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_2

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {p0, v5, v6}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, LQ4/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v7, LQ4/j;->d:LQ4/j;

    invoke-static {v5}, Lz2/e;->j(Ljava/lang/String;)LQ4/j;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, LQ4/g;->B(LQ4/j;)V

    new-instance v5, LQ4/f;

    invoke-direct {v5, v6, v0}, LQ4/f;-><init>(LQ4/i;I)V

    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupt certificate in cache entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v3

    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(LQ4/r;Ljava/util/List;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, LQ4/r;->p(J)LQ4/h;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LQ4/r;->d(I)LQ4/h;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    sget-object v2, LQ4/j;->d:LQ4/j;

    const-string v2, "bytes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lz2/e;->p([B)LQ4/j;

    move-result-object v1

    invoke-virtual {v1}, LQ4/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p0, v0}, LQ4/r;->d(I)LQ4/h;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c(LE4/d;)V
    .locals 11

    iget-object v0, p0, LC4/e;->a:LC4/y;

    iget-object v1, p0, LC4/e;->h:LC4/u;

    iget-object v2, p0, LC4/e;->g:LC4/w;

    iget-object v3, p0, LC4/e;->b:LC4/w;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, LE4/d;->j(I)LQ4/w;

    move-result-object p1

    invoke-static {p1}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object p1

    :try_start_0
    iget-object v5, v0, LC4/y;->h:Ljava/lang/String;

    invoke-virtual {p1, v5}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    iget-object v6, p0, LC4/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v3}, LC4/w;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1, v6, v7}, LQ4/r;->p(J)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v3}, LC4/w;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v4

    :goto_0
    const-string v8, ": "

    if-ge v7, v6, :cond_0

    :try_start_1
    invoke-virtual {v3, v7}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v8}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v3, v7}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    invoke-interface {p1, v5}, LQ4/h;->d(I)LQ4/h;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, LC4/e;->d:LC4/D;

    iget v6, p0, LC4/e;->e:I

    iget-object v7, p0, LC4/e;->f:Ljava/lang/String;

    const-string v9, "protocol"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "message"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, LC4/D;->b:LC4/D;

    if-ne v3, v10, :cond_1

    const-string v3, "HTTP/1.0"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "HTTP/1.1"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v2}, LC4/w;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    invoke-virtual {p1, v6, v7}, LQ4/r;->p(J)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v2}, LC4/w;->size()I

    move-result v3

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v8}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v2, v4}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    invoke-interface {p1, v5}, LQ4/h;->d(I)LQ4/h;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, LC4/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v8}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    iget-wide v2, p0, LC4/e;->i:J

    invoke-interface {p1, v2, v3}, LQ4/h;->p(J)LQ4/h;

    invoke-interface {p1, v5}, LQ4/h;->d(I)LQ4/h;

    sget-object v2, LC4/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v8}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    iget-wide v2, p0, LC4/e;->j:J

    invoke-interface {p1, v2, v3}, LQ4/h;->p(J)LQ4/h;

    invoke-interface {p1, v5}, LQ4/h;->d(I)LQ4/h;

    iget-object v0, v0, LC4/y;->a:Ljava/lang/String;

    const-string v2, "https"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v0, v1, LC4/u;->b:LC4/n;

    iget-object v0, v0, LC4/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;

    invoke-virtual {v1}, LC4/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, LC4/e;->b(LQ4/r;Ljava/util/List;)V

    iget-object v0, v1, LC4/u;->c:Ljava/util/List;

    invoke-static {p1, v0}, LC4/e;->b(LQ4/r;Ljava/util/List;)V

    iget-object v0, v1, LC4/u;->a:LC4/M;

    iget-object v0, v0, LC4/M;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v5}, LQ4/r;->d(I)LQ4/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, LL4/l;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
