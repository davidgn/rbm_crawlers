.class public final LH4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/z;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LC4/C;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LH4/a;->a:I

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LC4/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LH4/a;->a:I

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(LC4/I;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-static {p0, v0}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string p1, "\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(pattern)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "valueOf(header)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final a(LH4/g;)LC4/I;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, LH4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, LH4/g;->e:LC4/F;

    iget-object v3, v2, LH4/g;->a:LG4/i;

    sget-object v4, LZ3/p;->a:LZ3/p;

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v3, LG4/i;->n:LC4/g;

    if-nez v11, :cond_f

    monitor-enter v3

    :try_start_0
    iget-boolean v11, v3, LG4/i;->p:Z

    if-nez v11, :cond_e

    iget-boolean v11, v3, LG4/i;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_d

    monitor-exit v3

    if-eqz v0, :cond_2

    new-instance v0, LG4/e;

    iget-object v11, v3, LG4/i;->c:LG4/l;

    iget-object v12, v4, LC4/F;->c:Ljava/lang/Object;

    check-cast v12, LC4/y;

    iget-boolean v13, v12, LC4/y;->i:Z

    iget-object v14, v3, LG4/i;->a:LC4/C;

    if-eqz v13, :cond_1

    iget-object v13, v14, LC4/C;->u:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v13, :cond_0

    iget-object v15, v14, LC4/C;->y:LP4/c;

    iget-object v5, v14, LC4/C;->z:LC4/l;

    move-object/from16 v23, v5

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_2
    new-instance v5, LC4/a;

    iget-object v13, v14, LC4/C;->q:LC4/b;

    iget-object v15, v14, LC4/C;->t:Ljavax/net/SocketFactory;

    iget-object v7, v14, LC4/C;->s:LC4/b;

    iget-object v6, v14, LC4/C;->x:Ljava/util/List;

    move-object/from16 v28, v8

    iget-object v8, v14, LC4/C;->w:Ljava/util/List;

    iget-object v14, v14, LC4/C;->r:Ljava/net/ProxySelector;

    move/from16 v29, v10

    iget-object v10, v12, LC4/y;->d:Ljava/lang/String;

    iget v12, v12, LC4/y;->e:I

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    move-object/from16 v24, v7

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v14

    invoke-direct/range {v16 .. v27}, LC4/a;-><init>(Ljava/lang/String;ILC4/b;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;LC4/l;LC4/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    invoke-direct {v0, v11, v5, v3}, LG4/e;-><init>(LG4/l;LC4/a;LG4/i;)V

    iput-object v0, v3, LG4/i;->l:LG4/e;

    goto :goto_3

    :cond_2
    move-object/from16 v28, v8

    move/from16 v29, v10

    :goto_3
    :try_start_1
    iget-boolean v0, v3, LG4/i;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_c

    :try_start_2
    invoke-virtual {v2, v4}, LH4/g;->b(LC4/F;)LC4/I;

    move-result-object v0
    :try_end_2
    .catch LG4/m; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v0}, LC4/I;->e()LC4/H;

    move-result-object v0

    invoke-virtual {v9}, LC4/I;->e()LC4/H;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, LC4/H;->g:LC4/K;

    invoke-virtual {v4}, LC4/H;->a()LC4/I;

    move-result-object v4

    iget-object v6, v4, LC4/I;->l:LC4/K;

    if-nez v6, :cond_3

    iput-object v4, v0, LC4/H;->j:LC4/I;

    invoke-virtual {v0}, LC4/H;->a()LC4/I;

    move-result-object v0

    :goto_4
    move-object v9, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "priorResponse.body != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :goto_5
    iget-object v0, v3, LG4/i;->n:LC4/g;

    invoke-virtual {v1, v9, v0}, LH4/a;->b(LC4/I;LC4/g;)LC4/F;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, LG4/i;->g(Z)V

    return-object v9

    :cond_5
    :try_start_4
    iget-object v0, v9, LC4/I;->l:LC4/K;

    if-eqz v0, :cond_6

    invoke-static {v0}, LD4/c;->d(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    add-int/lit8 v10, v29, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, LG4/i;->g(Z)V

    move-object/from16 v8, v28

    goto/16 :goto_0

    :cond_7
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    move-object v6, v0

    nop

    instance-of v0, v6, LJ4/a;

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    invoke-virtual {v1, v6, v3, v4, v0}, LH4/a;->c(Ljava/io/IOException;LG4/i;LC4/F;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3, v7}, LG4/i;->g(Z)V

    move-object v8, v0

    move/from16 v10, v29

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v8, v28

    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v6, v2}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    throw v6

    :catch_1
    move-exception v0

    move-object/from16 v8, v28

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v0, v6, LG4/m;->b:Ljava/io/IOException;

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v3, v4, v7}, LH4/a;->c(Ljava/io/IOException;LG4/i;LC4/F;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, LG4/m;->a:Ljava/io/IOException;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3, v11}, LG4/i;->g(Z)V

    move-object v8, v6

    move v0, v7

    move/from16 v10, v29

    goto/16 :goto_1

    :cond_a
    :try_start_7
    iget-object v0, v6, LG4/m;->a:Ljava/io/IOException;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    invoke-virtual {v3, v2}, LG4/i;->g(Z)V

    throw v0

    :cond_d
    :try_start_8
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_e
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_9
    monitor-exit v3

    throw v0

    :cond_f
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v0, v2, LH4/g;->e:LC4/F;

    invoke-virtual {v0}, LC4/F;->g()LC4/E;

    move-result-object v3

    const-wide/16 v6, -0x1

    const-string v4, "Content-Type"

    const-string v5, "Content-Length"

    iget-object v8, v0, LC4/F;->e:Ljava/lang/Object;

    check-cast v8, LC4/G;

    if-eqz v8, :cond_12

    iget-object v9, v8, LC4/G;->c:Ljava/lang/Object;

    check-cast v9, LC4/A;

    if-eqz v9, :cond_10

    iget-object v9, v9, LC4/A;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v8, v8, LC4/G;->a:I

    int-to-long v8, v8

    cmp-long v10, v8, v6

    const-string v11, "Transfer-Encoding"

    if-eqz v10, :cond_11

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v3, LC4/E;->d:Ljava/lang/Object;

    check-cast v8, LC4/v;

    invoke-virtual {v8, v11}, LC4/v;->i(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    const-string v8, "chunked"

    invoke-virtual {v3, v11, v8}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v3, LC4/E;->d:Ljava/lang/Object;

    check-cast v8, LC4/v;

    invoke-virtual {v8, v5}, LC4/v;->i(Ljava/lang/String;)V

    :cond_12
    :goto_a
    iget-object v8, v0, LC4/F;->d:Ljava/lang/Object;

    check-cast v8, LC4/w;

    const-string v9, "Host"

    invoke-virtual {v8, v9}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, v0, LC4/F;->c:Ljava/lang/Object;

    check-cast v12, LC4/y;

    if-nez v10, :cond_13

    invoke-static {v12, v11}, LD4/c;->w(LC4/y;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string v9, "Connection"

    invoke-virtual {v8, v9}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_14

    const-string v10, "Keep-Alive"

    invoke-virtual {v3, v9, v10}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v9, "Accept-Encoding"

    invoke-virtual {v8, v9}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "gzip"

    if-nez v10, :cond_15

    const-string v10, "Range"

    invoke-virtual {v8, v10}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_15

    invoke-virtual {v3, v9, v13}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_15
    iget-object v9, v1, LH4/a;->b:Ljava/lang/Object;

    check-cast v9, LC4/b;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "url"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "User-Agent"

    invoke-virtual {v8, v10}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_16

    const-string v8, "okhttp/4.12.0"

    invoke-virtual {v3, v10, v8}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v3}, LC4/E;->b()LC4/F;

    move-result-object v3

    invoke-virtual {v2, v3}, LH4/g;->b(LC4/F;)LC4/I;

    move-result-object v2

    iget-object v3, v2, LC4/I;->f:LC4/w;

    invoke-static {v9, v12, v3}, LH4/f;->b(LC4/b;LC4/y;LC4/w;)V

    invoke-virtual {v2}, LC4/I;->e()LC4/H;

    move-result-object v10

    iput-object v0, v10, LC4/H;->a:LC4/F;

    if-eqz v11, :cond_17

    const-string v0, "Content-Encoding"

    invoke-static {v2, v0}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-static {v2}, LH4/f;->a(LC4/I;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v2, LC4/I;->l:LC4/K;

    if-eqz v8, :cond_17

    new-instance v9, LQ4/n;

    invoke-virtual {v8}, LC4/K;->e()LQ4/i;

    move-result-object v8

    invoke-direct {v9, v8}, LQ4/n;-><init>(LQ4/y;)V

    invoke-virtual {v3}, LC4/w;->h()LC4/v;

    move-result-object v3

    invoke-virtual {v3, v0}, LC4/v;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, LC4/v;->i(Ljava/lang/String;)V

    invoke-virtual {v3}, LC4/v;->e()LC4/w;

    move-result-object v0

    invoke-virtual {v10, v0}, LC4/H;->c(LC4/w;)V

    invoke-static {v2, v4}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, LC4/J;

    invoke-static {v9}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object v8

    const/4 v9, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, LC4/J;-><init>(Ljava/lang/Object;JLQ4/i;I)V

    iput-object v0, v10, LC4/H;->g:LC4/K;

    :cond_17
    invoke-virtual {v10}, LC4/H;->a()LC4/I;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(LC4/I;LC4/g;)LC4/F;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, LC4/g;->e:Ljava/lang/Object;

    check-cast v1, LG4/k;

    if-eqz v1, :cond_0

    iget-object v1, v1, LG4/k;->b:LC4/L;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, LC4/I;->d:I

    iget-object v3, p1, LC4/I;->a:LC4/F;

    iget-object v3, v3, LC4/F;->b:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x134

    const/16 v7, 0x133

    if-eq v2, v7, :cond_e

    if-eq v2, v6, :cond_e

    const/16 v8, 0x191

    if-eq v2, v8, :cond_d

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_a

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    :cond_1
    iget-object v1, p0, LH4/a;->b:Ljava/lang/Object;

    check-cast v1, LC4/C;

    iget-boolean v1, v1, LC4/C;->f:Z

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p1, LC4/I;->o:LC4/I;

    if-eqz v1, :cond_3

    iget v1, v1, LC4/I;->d:I

    if-ne v1, p2, :cond_3

    return-object v0

    :cond_3
    invoke-static {p1, v4}, LH4/a;->d(LC4/I;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p1, p1, LC4/I;->a:LC4/F;

    return-object p1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object p1, v1, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, LH4/a;->b:Ljava/lang/Object;

    check-cast p1, LC4/C;

    iget-object p1, p1, LC4/C;->s:LC4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v1, p1, LC4/I;->o:LC4/I;

    if-eqz v1, :cond_8

    iget v1, v1, LC4/I;->d:I

    if-ne v1, p2, :cond_8

    return-object v0

    :cond_8
    const p2, 0x7fffffff

    invoke-static {p1, p2}, LH4/a;->d(LC4/I;I)I

    move-result p2

    if-nez p2, :cond_9

    iget-object p1, p1, LC4/I;->a:LC4/F;

    return-object p1

    :cond_9
    return-object v0

    :cond_a
    if-eqz p2, :cond_c

    iget-object v1, p2, LC4/g;->c:Ljava/lang/Object;

    check-cast v1, LG4/e;

    iget-object v1, v1, LG4/e;->b:LC4/a;

    iget-object v1, v1, LC4/a;->h:LC4/y;

    iget-object v1, v1, LC4/y;->d:Ljava/lang/String;

    iget-object v2, p2, LC4/g;->e:Ljava/lang/Object;

    check-cast v2, LG4/k;

    iget-object v2, v2, LG4/k;->b:LC4/L;

    iget-object v2, v2, LC4/L;->a:LC4/a;

    iget-object v2, v2, LC4/a;->h:LC4/y;

    iget-object v2, v2, LC4/y;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_1

    :cond_b
    iget-object p2, p2, LC4/g;->e:Ljava/lang/Object;

    check-cast p2, LG4/k;

    monitor-enter p2

    :try_start_0
    iput-boolean v5, p2, LG4/k;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p1, p1, LC4/I;->a:LC4/F;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_c
    :goto_1
    return-object v0

    :cond_d
    iget-object p1, p0, LH4/a;->b:Ljava/lang/Object;

    check-cast p1, LC4/C;

    iget-object p1, p1, LC4/C;->l:LC4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_e
    :pswitch_0
    iget-object p2, p0, LH4/a;->b:Ljava/lang/Object;

    check-cast p2, LC4/C;

    iget-boolean v1, p2, LC4/C;->m:Z

    if-nez v1, :cond_f

    goto/16 :goto_5

    :cond_f
    const-string v1, "Location"

    invoke-static {p1, v1}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto/16 :goto_5

    :cond_10
    iget-object v2, p1, LC4/I;->a:LC4/F;

    iget-object v8, v2, LC4/F;->c:Ljava/lang/Object;

    check-cast v8, LC4/y;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance v9, LC4/x;

    invoke-direct {v9}, LC4/x;-><init>()V

    invoke-virtual {v9, v8, v1}, LC4/x;->c(LC4/y;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-object v9, v0

    :goto_2
    if-eqz v9, :cond_11

    invoke-virtual {v9}, LC4/x;->a()LC4/y;

    move-result-object v1

    goto :goto_3

    :cond_11
    move-object v1, v0

    :goto_3
    if-nez v1, :cond_12

    goto/16 :goto_5

    :cond_12
    iget-object v8, v2, LC4/F;->c:Ljava/lang/Object;

    check-cast v8, LC4/y;

    iget-object v8, v8, LC4/y;->a:Ljava/lang/String;

    iget-object v9, v1, LC4/y;->a:Ljava/lang/String;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-boolean p2, p2, LC4/C;->n:Z

    if-nez p2, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {v2}, LC4/F;->g()LC4/E;

    move-result-object p2

    invoke-static {v3}, LW2/B;->t(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v8, "PROPFIND"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget p1, p1, LC4/I;->d:I

    if-nez v9, :cond_14

    if-eq p1, v6, :cond_14

    if-ne p1, v7, :cond_15

    :cond_14
    move v4, v5

    :cond_15
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    if-eq p1, v6, :cond_16

    if-eq p1, v7, :cond_16

    const-string p1, "GET"

    invoke-virtual {p2, p1, v0}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    goto :goto_4

    :cond_16
    if-eqz v4, :cond_17

    iget-object p1, v2, LC4/F;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LC4/G;

    :cond_17
    invoke-virtual {p2, v3, v0}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    :goto_4
    if-nez v4, :cond_18

    const-string p1, "Transfer-Encoding"

    iget-object v0, p2, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0, p1}, LC4/v;->i(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    iget-object v0, p2, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0, p1}, LC4/v;->i(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    iget-object v0, p2, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0, p1}, LC4/v;->i(Ljava/lang/String;)V

    :cond_18
    iget-object p1, v2, LC4/F;->c:Ljava/lang/Object;

    check-cast p1, LC4/y;

    invoke-static {p1, v1}, LD4/c;->a(LC4/y;LC4/y;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "Authorization"

    iget-object v0, p2, LC4/E;->d:Ljava/lang/Object;

    check-cast v0, LC4/v;

    invoke-virtual {v0, p1}, LC4/v;->i(Ljava/lang/String;)V

    :cond_19
    iput-object v1, p2, LC4/E;->c:Ljava/lang/Object;

    invoke-virtual {p2}, LC4/E;->b()LC4/F;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/io/IOException;LG4/i;LC4/F;Z)Z
    .locals 3

    iget-object p3, p0, LH4/a;->b:Ljava/lang/Object;

    check-cast p3, LC4/C;

    iget-boolean p3, p3, LC4/C;->f:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-eqz p4, :cond_1

    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_1

    return v0

    :cond_1
    instance-of p3, p1, Ljava/net/ProtocolException;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_3

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    if-nez p4, :cond_5

    goto :goto_1

    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    iget-object p1, p2, LG4/i;->l:LG4/e;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget p2, p1, LG4/e;->f:I

    const/4 p3, 0x1

    if-nez p2, :cond_7

    iget p4, p1, LG4/e;->g:I

    if-nez p4, :cond_7

    iget p4, p1, LG4/e;->h:I

    if-nez p4, :cond_7

    move p1, v0

    goto :goto_4

    :cond_7
    iget-object p4, p1, LG4/e;->i:LC4/L;

    if-eqz p4, :cond_8

    :goto_2
    move p1, p3

    goto :goto_4

    :cond_8
    const/4 p4, 0x0

    if-gt p2, p3, :cond_d

    iget p2, p1, LG4/e;->g:I

    if-gt p2, p3, :cond_d

    iget p2, p1, LG4/e;->h:I

    if-lez p2, :cond_9

    goto :goto_3

    :cond_9
    iget-object p2, p1, LG4/e;->c:LG4/i;

    iget-object p2, p2, LG4/i;->m:LG4/k;

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    monitor-enter p2

    :try_start_0
    iget v1, p2, LG4/k;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_b

    monitor-exit p2

    goto :goto_3

    :cond_b
    :try_start_1
    iget-object v1, p2, LG4/k;->b:LC4/L;

    iget-object v1, v1, LC4/L;->a:LC4/a;

    iget-object v1, v1, LC4/a;->h:LC4/y;

    iget-object v2, p1, LG4/e;->b:LC4/a;

    iget-object v2, v2, LC4/a;->h:LC4/y;

    invoke-static {v1, v2}, LD4/c;->a(LC4/y;LC4/y;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_c

    monitor-exit p2

    goto :goto_3

    :cond_c
    :try_start_2
    iget-object p4, p2, LG4/k;->b:LC4/L;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_d
    :goto_3
    if-eqz p4, :cond_e

    iput-object p4, p1, LG4/e;->i:LC4/L;

    goto :goto_2

    :cond_e
    iget-object p2, p1, LG4/e;->d:LG4/n;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, LG4/n;->b()Z

    move-result p2

    if-ne p2, p3, :cond_f

    goto :goto_2

    :cond_f
    iget-object p1, p1, LG4/e;->e:LG4/o;

    if-nez p1, :cond_10

    goto :goto_2

    :cond_10
    invoke-virtual {p1}, LG4/o;->i()Z

    move-result p1

    :goto_4
    if-nez p1, :cond_11

    return v0

    :cond_11
    return p3
.end method
