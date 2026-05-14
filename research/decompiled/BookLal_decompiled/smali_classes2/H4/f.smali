.class public abstract LH4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQ4/j;->d:LQ4/j;

    const-string v0, "\"\\"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    const-string v0, "\t ,="

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    return-void
.end method

.method public static final a(LC4/I;)Z
    .locals 7

    iget-object v0, p0, LC4/I;->a:LC4/F;

    iget-object v0, v0, LC4/F;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x64

    const/4 v2, 0x1

    iget v3, p0, LC4/I;->d:I

    if-lt v3, v0, :cond_1

    const/16 v0, 0xc8

    if-lt v3, v0, :cond_2

    :cond_1
    const/16 v0, 0xcc

    if-eq v3, v0, :cond_2

    const/16 v0, 0x130

    if-eq v3, v0, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, LD4/c;->k(LC4/I;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-static {p0, v0}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public static final b(LC4/b;LC4/y;LC4/w;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "url"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, LC4/b;->b:LC4/b;

    if-ne v0, v5, :cond_0

    return-void

    :cond_0
    sget-object v0, LC4/r;->j:Ljava/util/regex/Pattern;

    const-string v0, "Set-Cookie"

    invoke-virtual {v2, v0}, LC4/w;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_20

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "setCookie"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v0, LD4/c;->a:[B

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x3b

    invoke-static {v10, v13, v6, v0}, LD4/c;->g(Ljava/lang/String;CII)I

    move-result v0

    const/16 v14, 0x3d

    invoke-static {v10, v14, v6, v0}, LD4/c;->g(Ljava/lang/String;CII)I

    move-result v15

    if-ne v15, v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_1
    invoke-static {v6, v15, v10}, LD4/c;->z(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_2

    goto :goto_2

    :cond_2
    invoke-static/range {v17 .. v17}, LD4/c;->m(Ljava/lang/String;)I

    move-result v7

    const/4 v6, -0x1

    if-eq v7, v6, :cond_3

    :goto_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_3
    add-int/2addr v15, v3

    invoke-static {v15, v0, v10}, LD4/c;->z(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LD4/c;->m(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    const-wide v19, 0xe677d21fdbffL

    move/from16 v26, v3

    move-wide/from16 v28, v19

    const/4 v7, 0x0

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    :goto_3
    const-wide v30, 0x7fffffffffffffffL

    const-wide/high16 v32, -0x8000000000000000L

    if-ge v0, v6, :cond_11

    invoke-static {v10, v13, v0, v6}, LD4/c;->g(Ljava/lang/String;CII)I

    move-result v15

    invoke-static {v10, v14, v0, v15}, LD4/c;->g(Ljava/lang/String;CII)I

    move-result v13

    invoke-static {v0, v13, v10}, LD4/c;->z(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v13, v15, :cond_5

    add-int/2addr v13, v3

    invoke-static {v13, v15, v10}, LD4/c;->z(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_5
    const-string v13, ""

    :goto_4
    const-string v14, "expires"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v13}, La/a;->t(ILjava/lang/String;)J

    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v25, v3

    goto/16 :goto_7

    :cond_6
    const-string v14, "max-age"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v21, 0x0

    cmp-long v0, v13, v21

    if-gtz v0, :cond_7

    goto :goto_5

    :cond_7
    move-wide/from16 v32, v13

    :goto_5
    move-wide/from16 v21, v32

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_2
    const-string v0, "-?\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v3, "compile(pattern)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-"

    const/4 v3, 0x0

    invoke-static {v13, v0, v3}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide/from16 v30, v32

    :cond_8
    move-wide/from16 v21, v30

    :goto_6
    const/4 v3, 0x1

    const/16 v25, 0x1

    goto :goto_7

    :cond_9
    throw v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    const-string v3, "domain"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_3
    const-string v0, "."

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v13, v0}, Ls4/e;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v7, v0

    const/4 v3, 0x1

    const/16 v26, 0x0

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed requirement."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_d
    const-string v3, "path"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v27, v13

    :catch_1
    :cond_e
    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    const-string v3, "secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    const/16 v23, 0x1

    goto :goto_7

    :cond_10
    const-string v3, "httponly"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    const/16 v24, 0x1

    :goto_7
    add-int/lit8 v0, v15, 0x1

    const/16 v13, 0x3b

    const/16 v14, 0x3d

    goto/16 :goto_3

    :cond_11
    cmp-long v0, v21, v32

    if-nez v0, :cond_12

    move-wide/from16 v19, v32

    goto :goto_8

    :cond_12
    const-wide/16 v13, -0x1

    cmp-long v0, v21, v13

    if-eqz v0, :cond_15

    const-wide v13, 0x20c49ba5e353f7L

    cmp-long v0, v21, v13

    if-gtz v0, :cond_13

    const/16 v0, 0x3e8

    int-to-long v13, v0

    mul-long v30, v21, v13

    :cond_13
    add-long v30, v11, v30

    cmp-long v0, v30, v11

    if-ltz v0, :cond_16

    cmp-long v0, v30, v19

    if-lez v0, :cond_14

    goto :goto_8

    :cond_14
    move-wide/from16 v19, v30

    goto :goto_8

    :cond_15
    move-wide/from16 v19, v28

    :cond_16
    :goto_8
    iget-object v0, v1, LC4/y;->d:Ljava/lang/String;

    if-nez v7, :cond_17

    move-object v7, v0

    goto :goto_9

    :cond_17
    invoke-static {v0, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_9

    :cond_18
    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_1d

    sget-object v3, LD4/c;->f:Ls4/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Ls4/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1d

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_19

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v7}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto/16 :goto_2

    :cond_19
    const-string v0, "/"

    move-object/from16 v3, v27

    const/4 v6, 0x0

    if-eqz v3, :cond_1b

    invoke-static {v3, v0, v6}, Ls4/m;->M(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_a

    :cond_1a
    move-object/from16 v22, v3

    goto :goto_b

    :cond_1b
    :goto_a
    invoke-virtual/range {p1 .. p1}, LC4/y;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x2f

    const/4 v11, 0x6

    invoke-static {v3, v10, v6, v11}, Ls4/e;->U(Ljava/lang/String;CII)I

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v22, v0

    :goto_b
    new-instance v0, LC4/r;

    move-object/from16 v16, v0

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v26}, LC4/r;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_c

    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_1

    :goto_c
    if-nez v0, :cond_1e

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_1e
    if-nez v9, :cond_1f

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_1f
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :goto_e
    add-int/2addr v8, v3

    goto/16 :goto_0

    :cond_20
    if-eqz v9, :cond_21

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "{\n        Collections.un\u2026ableList(cookies)\n      }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_21
    sget-object v0, LZ3/p;->a:LZ3/p;

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    return-void
.end method
