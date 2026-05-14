.class public final LC4/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LC4/x;->b:Ljava/lang/String;

    iput-object v0, p0, LC4/x;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, LC4/x;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LC4/x;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()LC4/y;
    .locals 14

    iget-object v1, p0, LC4/x;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, p0, LC4/x;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v2, v3}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, LC4/x;->c:Ljava/lang/String;

    invoke-static {v0, v2, v2, v2, v3}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LC4/x;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, LC4/x;->b()I

    move-result v7

    iget-object v0, p0, LC4/x;->f:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0}, LZ3/i;->c0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v2, v2, v2, v3}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC4/x;->g:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0}, LZ3/i;->c0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v11, v2, v2, v13, v12}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_1
    move-object v11, v9

    :goto_2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v10, v9

    :cond_3
    iget-object v0, p0, LC4/x;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0, v2, v2, v2, v3}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :cond_4
    invoke-virtual {p0}, LC4/x;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, LC4/y;

    move-object v0, v12

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v10

    move-object v8, v9

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, LC4/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 3

    iget v0, p0, LC4/x;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LC4/x;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1bb

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public final c(LC4/y;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    const/4 v2, 0x6

    const/4 v11, 0x1

    sget-object v3, LD4/c;->a:[B

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v12, 0x0

    invoke-static {v12, v3, v10}, LD4/c;->n(IILjava/lang/String;)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4, v10}, LD4/c;->o(IILjava/lang/String;)I

    move-result v13

    sub-int v4, v13, v3

    const/4 v14, -0x1

    const/16 v15, 0x5b

    const/4 v5, 0x2

    const/16 v9, 0x3a

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    move v4, v14

    goto :goto_3

    :cond_1
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x61

    invoke-static {v4, v6}, Lkotlin/jvm/internal/i;->h(II)I

    move-result v7

    const/16 v8, 0x41

    if-ltz v7, :cond_2

    const/16 v7, 0x7a

    invoke-static {v4, v7}, Lkotlin/jvm/internal/i;->h(II)I

    move-result v7

    if-lez v7, :cond_3

    :cond_2
    invoke-static {v4, v8}, Lkotlin/jvm/internal/i;->h(II)I

    move-result v7

    if-ltz v7, :cond_0

    const/16 v7, 0x5a

    invoke-static {v4, v7}, Lkotlin/jvm/internal/i;->h(II)I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v3, 0x1

    :goto_1
    if-ge v4, v13, :cond_0

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v6, v7, :cond_4

    const/16 v6, 0x7b

    if-ge v7, v6, :cond_4

    goto :goto_2

    :cond_4
    if-gt v8, v7, :cond_5

    if-ge v7, v15, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0x30

    if-gt v6, v7, :cond_6

    if-ge v7, v9, :cond_6

    goto :goto_2

    :cond_6
    const/16 v6, 0x2b

    if-ne v7, v6, :cond_7

    goto :goto_2

    :cond_7
    const/16 v6, 0x2d

    if-ne v7, v6, :cond_8

    goto :goto_2

    :cond_8
    const/16 v6, 0x2e

    if-ne v7, v6, :cond_9

    :goto_2
    add-int/2addr v4, v11

    const/16 v6, 0x61

    goto :goto_1

    :cond_9
    if-ne v7, v9, :cond_0

    :goto_3
    const-string v8, "http"

    const-string v7, "https"

    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eq v4, v14, :cond_c

    const-string v15, "https:"

    invoke-static {v10, v15, v3, v11}, Ls4/m;->L(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v15

    if-eqz v15, :cond_a

    iput-object v7, v0, LC4/x;->a:Ljava/lang/String;

    add-int/2addr v3, v2

    goto :goto_4

    :cond_a
    const-string v2, "http:"

    invoke-static {v10, v2, v3, v11}, Ls4/m;->L(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-object v8, v0, LC4/x;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    if-eqz v1, :cond_32

    iget-object v2, v1, LC4/y;->a:Ljava/lang/String;

    iput-object v2, v0, LC4/x;->a:Ljava/lang/String;

    :goto_4
    move v2, v3

    move v4, v12

    :goto_5
    const/16 v15, 0x2f

    const/16 v12, 0x5c

    if-ge v2, v13, :cond_e

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v12, :cond_d

    if-ne v9, v15, :cond_e

    :cond_d
    add-int/2addr v4, v11

    add-int/2addr v2, v11

    const/16 v9, 0x3a

    const/4 v12, 0x0

    goto :goto_5

    :cond_e
    iget-object v9, v0, LC4/x;->f:Ljava/util/ArrayList;

    const/16 v11, 0x23

    if-ge v4, v5, :cond_13

    if-eqz v1, :cond_13

    iget-object v5, v0, LC4/x;->a:Ljava/lang/String;

    iget-object v2, v1, LC4/y;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual/range {p1 .. p1}, LC4/y;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LC4/x;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, LC4/y;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LC4/x;->c:Ljava/lang/String;

    iget-object v2, v1, LC4/y;->d:Ljava/lang/String;

    iput-object v2, v0, LC4/x;->d:Ljava/lang/String;

    iget v2, v1, LC4/y;->e:I

    iput v2, v0, LC4/x;->e:I

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, LC4/y;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v3, v13, :cond_10

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v11, :cond_12

    :cond_10
    invoke-virtual/range {p1 .. p1}, LC4/y;->d()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_11

    const/16 v24, 0x0

    const/16 v27, 0xd3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, " \"\'<>#"

    const/16 v23, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v19 .. v27}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LC4/b;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    iput-object v1, v0, LC4/x;->g:Ljava/util/ArrayList;

    :cond_12
    move-object/from16 p1, v9

    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_13
    :goto_7
    add-int/2addr v3, v4

    move v5, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_8
    const-string v1, "@/\\?#"

    invoke-static {v5, v13, v10, v1}, LD4/c;->f(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v13, :cond_14

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    :cond_14
    move v1, v14

    :goto_9
    if-eq v1, v14, :cond_19

    if-eq v1, v11, :cond_19

    if-eq v1, v15, :cond_19

    if-eq v1, v12, :cond_19

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_19

    const/16 v3, 0x40

    if-eq v1, v3, :cond_15

    goto :goto_8

    :cond_15
    const-string v3, "%40"

    if-nez v19, :cond_18

    const/16 v1, 0x3a

    invoke-static {v10, v1, v5, v4}, LD4/c;->g(Ljava/lang/String;CII)I

    move-result v11

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-string v22, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0xf0

    move/from16 v26, v1

    move-object/from16 v1, p2

    move v2, v5

    move-object v5, v3

    move v3, v11

    move v12, v4

    move-object/from16 v4, v22

    move-object v15, v5

    move/from16 v5, v23

    move-object/from16 v28, v6

    move/from16 v6, v24

    move-object/from16 v29, v7

    move/from16 v7, v18

    move-object/from16 v30, v8

    move/from16 v8, v21

    move-object/from16 p1, v9

    move/from16 v14, v26

    move/from16 v9, v25

    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    if-eqz v20, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, LC4/x;->b:Ljava/lang/String;

    invoke-static {v2, v3, v15, v1}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    iput-object v1, v0, LC4/x;->b:Ljava/lang/String;

    if-eq v11, v12, :cond_17

    const/4 v1, 0x1

    add-int/lit8 v2, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0xf0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LC4/x;->c:Ljava/lang/String;

    const/16 v19, 0x1

    :cond_17
    const/4 v1, 0x1

    const/16 v20, 0x1

    goto :goto_a

    :cond_18
    move-object v15, v3

    move v12, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 p1, v9

    const/16 v14, 0x3a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, LC4/x;->c:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/16 v15, 0xf0

    move-object/from16 v1, p2

    move v2, v5

    move v3, v12

    move v5, v6

    move v6, v9

    move v9, v15

    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LC4/x;->c:Ljava/lang/String;

    const/4 v1, 0x1

    :goto_a
    add-int/lit8 v5, v12, 0x1

    move-object/from16 v9, p1

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    const/16 v11, 0x23

    const/16 v12, 0x5c

    const/4 v14, -0x1

    const/16 v15, 0x2f

    goto/16 :goto_8

    :cond_19
    move v12, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 p1, v9

    const/16 v14, 0x3a

    move v4, v5

    :goto_b
    if-ge v4, v12, :cond_1d

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    add-int/2addr v4, v1

    if-ge v4, v12, :cond_1b

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_1a

    :cond_1b
    const/4 v1, 0x1

    goto :goto_c

    :cond_1c
    if-ne v1, v14, :cond_1b

    move v11, v4

    const/4 v1, 0x1

    goto :goto_d

    :goto_c
    add-int/2addr v4, v1

    goto :goto_b

    :cond_1d
    const/4 v1, 0x1

    move v11, v12

    :goto_d
    add-int/lit8 v14, v11, 0x1

    const/4 v1, 0x4

    const/16 v15, 0x22

    if-ge v14, v12, :cond_20

    const/4 v2, 0x0

    invoke-static {v10, v5, v11, v2, v1}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LC4/x;->d:Ljava/lang/String;

    :try_start_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0xf8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move v2, v14

    move v3, v12

    move/from16 v31, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    :try_start_1
    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_1e

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_1e

    goto :goto_e

    :catch_0
    move/from16 v31, v5

    :catch_1
    :cond_1e
    const/4 v1, -0x1

    :goto_e
    iput v1, v0, LC4/x;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    move-object/from16 v3, v28

    move/from16 v5, v31

    const/4 v14, 0x0

    goto :goto_10

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL port: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v28

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    move-object/from16 v3, v28

    const/4 v2, -0x1

    const/4 v14, 0x0

    invoke-static {v10, v5, v11, v14, v1}, LC4/b;->e(Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LC4/x;->d:Ljava/lang/String;

    iget-object v1, v0, LC4/x;->a:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    move-object/from16 v4, v30

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v1, 0x50

    goto :goto_f

    :cond_21
    move-object/from16 v4, v29

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x1bb

    goto :goto_f

    :cond_22
    move v1, v2

    :goto_f
    iput v1, v0, LC4/x;->e:I

    :goto_10
    iget-object v1, v0, LC4/x;->d:Ljava/lang/String;

    if-eqz v1, :cond_31

    move v3, v12

    :goto_11
    const-string v1, "?#"

    invoke-static {v3, v13, v10, v1}, LD4/c;->f(IILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-ne v3, v11, :cond_24

    :cond_23
    const/4 v2, 0x1

    goto/16 :goto_1a

    :cond_24
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v12, ""

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_25

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_26

    :cond_25
    move-object/from16 v15, p1

    const/4 v2, 0x1

    goto :goto_12

    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v15, p1

    invoke-virtual {v15, v1, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :goto_12
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v2

    :goto_13
    move v2, v3

    :goto_14
    if-ge v2, v11, :cond_23

    const-string v1, "/\\"

    invoke-static {v2, v11, v10, v1}, LD4/c;->f(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ge v9, v11, :cond_27

    const/16 v16, 0x1

    goto :goto_15

    :cond_27
    move/from16 v16, v14

    :goto_15
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, " \"<>^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v17, 0xf0

    move-object/from16 v1, p2

    move v3, v9

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "%2e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_28
    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "%2e."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, ".%2e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "%2e%2e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_18

    :cond_29
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v15, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_2a
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    if-eqz v16, :cond_2b

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_17
    const/4 v2, 0x1

    goto :goto_19

    :cond_2c
    :goto_18
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v15, v1, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2d
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    if-eqz v16, :cond_2e

    add-int/lit8 v1, v18, 0x1

    move v2, v1

    goto/16 :goto_14

    :cond_2e
    move/from16 v2, v18

    goto/16 :goto_14

    :goto_1a
    if-ge v11, v13, :cond_2f

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_2f

    const/16 v1, 0x23

    invoke-static {v10, v1, v11, v13}, LD4/c;->g(Ljava/lang/String;CII)I

    move-result v12

    add-int/lit8 v3, v11, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0xd0

    move-object/from16 v1, p2

    move v2, v3

    move v3, v12

    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LC4/b;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, LC4/x;->g:Ljava/util/ArrayList;

    move v11, v12

    :cond_2f
    if-ge v11, v13, :cond_30

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_30

    const/4 v1, 0x1

    add-int/lit8 v2, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0xb0

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, LC4/b;->b(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LC4/x;->h:Ljava/lang/String;

    :cond_30
    return-void

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL host: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_33

    invoke-static {v2, v10}, Ls4/e;->d0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_33
    move-object v1, v10

    :goto_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-static {v3, v1}, Le1/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LC4/x;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, LC4/x;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LC4/x;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, LC4/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/x;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, LC4/x;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Ls4/e;->N(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, LC4/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, LC4/x;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, LC4/x;->a:Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_6
    invoke-virtual {p0}, LC4/x;->b()I

    move-result v1

    iget-object v4, p0, LC4/x;->a:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x50

    goto :goto_3

    :cond_7
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x1bb

    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, LC4/x;->f:Ljava/util/ArrayList;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_b

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, LC4/x;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/x;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-static {v1, v0}, LC4/b;->g(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    :cond_c
    iget-object v1, p0, LC4/x;->h:Ljava/lang/String;

    if-eqz v1, :cond_d

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC4/x;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
