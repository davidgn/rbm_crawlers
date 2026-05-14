.class public abstract Ll3/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ll3/q0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/q0;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public static a(LX2/a;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, LX2/a;->g()Z

    move-result v1

    const-string v2, "unexpected end of JSON"

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v1

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "Bad token: "

    const/4 v7, 0x0

    if-eqz v1, :cond_24

    const/16 v9, 0x27

    const/4 v10, 0x0

    if-eq v1, v3, :cond_19

    iget-object v2, v0, LX2/a;->b:[C

    const/16 v3, 0xa

    const/16 v5, 0x9

    const/16 v11, 0xb

    const/16 v12, 0x10

    const/16 v13, 0xf

    const/4 v14, 0x5

    const/16 v15, 0x8

    if-eq v1, v14, :cond_11

    const/4 v8, 0x6

    if-eq v1, v8, :cond_7

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    if-ne v1, v15, :cond_2

    iget v1, v0, LX2/a;->l:I

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v1

    :cond_0
    if-ne v1, v2, :cond_1

    iput v7, v0, LX2/a;->l:I

    iget-object v1, v0, LX2/a;->s:[I

    iget v0, v0, LX2/a;->q:I

    sub-int/2addr v0, v4

    aget v2, v1, v0

    add-int/2addr v2, v4

    aput v2, v1, v0

    return-object v10

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected null but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v1, v0, LX2/a;->l:I

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v1

    :cond_4
    if-ne v1, v14, :cond_5

    iput v7, v0, LX2/a;->l:I

    iget-object v1, v0, LX2/a;->s:[I

    iget v0, v0, LX2/a;->q:I

    sub-int/2addr v0, v4

    aget v2, v1, v0

    add-int/2addr v2, v4

    aput v2, v1, v0

    goto :goto_0

    :cond_5
    if-ne v1, v8, :cond_6

    iput v7, v0, LX2/a;->l:I

    iget-object v1, v0, LX2/a;->s:[I

    iget v0, v0, LX2/a;->q:I

    sub-int/2addr v0, v4

    aget v2, v1, v0

    add-int/2addr v2, v4

    aput v2, v1, v0

    move v4, v7

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a boolean but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, v0, LX2/a;->l:I

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v1

    :cond_8
    if-ne v1, v13, :cond_9

    iput v7, v0, LX2/a;->l:I

    iget-object v1, v0, LX2/a;->s:[I

    iget v2, v0, LX2/a;->q:I

    sub-int/2addr v2, v4

    aget v3, v1, v2

    add-int/2addr v3, v4

    aput v3, v1, v2

    iget-wide v0, v0, LX2/a;->m:J

    long-to-double v0, v0

    goto/16 :goto_4

    :cond_9
    if-ne v1, v12, :cond_a

    new-instance v1, Ljava/lang/String;

    iget v3, v0, LX2/a;->c:I

    iget v5, v0, LX2/a;->n:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, LX2/a;->o:Ljava/lang/String;

    iget v1, v0, LX2/a;->c:I

    iget v2, v0, LX2/a;->n:I

    add-int/2addr v1, v2

    iput v1, v0, LX2/a;->c:I

    goto :goto_3

    :cond_a
    if-eq v1, v15, :cond_e

    if-ne v1, v5, :cond_b

    goto :goto_1

    :cond_b
    if-ne v1, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, LX2/a;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LX2/a;->o:Ljava/lang/String;

    goto :goto_3

    :cond_c
    if-ne v1, v11, :cond_d

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a double but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_1
    if-ne v1, v15, :cond_f

    move v8, v9

    goto :goto_2

    :cond_f
    const/16 v8, 0x22

    :goto_2
    invoke-virtual {v0, v8}, LX2/a;->r(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LX2/a;->o:Ljava/lang/String;

    :goto_3
    iput v11, v0, LX2/a;->l:I

    iget-object v1, v0, LX2/a;->o:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_10

    iput-object v10, v0, LX2/a;->o:Ljava/lang/String;

    iput v7, v0, LX2/a;->l:I

    iget-object v3, v0, LX2/a;->s:[I

    iget v0, v0, LX2/a;->q:I

    sub-int/2addr v0, v4

    aget v5, v3, v0

    add-int/2addr v5, v4

    aput v5, v3, v0

    move-wide v0, v1

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v3, LX2/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    iget v1, v0, LX2/a;->l:I

    if-nez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v1

    :cond_12
    if-ne v1, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, LX2/a;->s()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_13
    if-ne v1, v15, :cond_14

    invoke-virtual {v0, v9}, LX2/a;->r(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_14
    if-ne v1, v5, :cond_15

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, LX2/a;->r(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_15
    if-ne v1, v11, :cond_16

    iget-object v1, v0, LX2/a;->o:Ljava/lang/String;

    iput-object v10, v0, LX2/a;->o:Ljava/lang/String;

    goto :goto_5

    :cond_16
    if-ne v1, v13, :cond_17

    iget-wide v1, v0, LX2/a;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_17
    if-ne v1, v12, :cond_18

    new-instance v1, Ljava/lang/String;

    iget v3, v0, LX2/a;->c:I

    iget v5, v0, LX2/a;->n:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    iget v2, v0, LX2/a;->c:I

    iget v3, v0, LX2/a;->n:I

    add-int/2addr v2, v3

    iput v2, v0, LX2/a;->c:I

    :goto_5
    iput v7, v0, LX2/a;->l:I

    iget-object v2, v0, LX2/a;->s:[I

    iget v0, v0, LX2/a;->q:I

    sub-int/2addr v0, v4

    aget v3, v2, v0

    add-int/2addr v3, v4

    aput v3, v2, v0

    return-object v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a string but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    iget v1, v0, LX2/a;->l:I

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v1

    :cond_1a
    if-ne v1, v4, :cond_23

    invoke-virtual {v0, v5}, LX2/a;->u(I)V

    iput v7, v0, LX2/a;->l:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, LX2/a;->g()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget v5, v0, LX2/a;->l:I

    if-nez v5, :cond_1b

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v5

    :cond_1b
    const/16 v8, 0xe

    if-ne v5, v8, :cond_1c

    invoke-virtual/range {p0 .. p0}, LX2/a;->s()Ljava/lang/String;

    move-result-object v5

    :goto_7
    move-object v8, v5

    const/16 v5, 0x22

    goto :goto_8

    :cond_1c
    const/16 v8, 0xc

    if-ne v5, v8, :cond_1d

    invoke-virtual {v0, v9}, LX2/a;->r(C)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_1d
    const/16 v8, 0xd

    if-ne v5, v8, :cond_1e

    const/16 v5, 0x22

    invoke-virtual {v0, v5}, LX2/a;->r(C)Ljava/lang/String;

    move-result-object v8

    :goto_8
    iput v7, v0, LX2/a;->l:I

    iget-object v11, v0, LX2/a;->r:[Ljava/lang/String;

    iget v12, v0, LX2/a;->q:I

    sub-int/2addr v12, v4

    aput-object v8, v11, v12

    invoke-static/range {p0 .. p0}, Ll3/q0;->a(LX2/a;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a name but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v5

    if-ne v5, v2, :cond_20

    move v2, v4

    goto :goto_9

    :cond_20
    move v2, v7

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, LZ2/l;->m(ZLjava/lang/String;)V

    iget v2, v0, LX2/a;->l:I

    if-nez v2, :cond_21

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v2

    :cond_21
    if-ne v2, v3, :cond_22

    iget v2, v0, LX2/a;->q:I

    add-int/lit8 v5, v2, -0x1

    iput v5, v0, LX2/a;->q:I

    iget-object v6, v0, LX2/a;->r:[Ljava/lang/String;

    aput-object v10, v6, v5

    iget-object v5, v0, LX2/a;->s:[I

    sub-int/2addr v2, v3

    aget v3, v5, v2

    add-int/2addr v3, v4

    aput v3, v5, v2

    iput v7, v0, LX2/a;->l:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected END_OBJECT but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    iget v1, v0, LX2/a;->l:I

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v1

    :cond_25
    if-ne v1, v5, :cond_2a

    invoke-virtual {v0, v4}, LX2/a;->u(I)V

    iget-object v1, v0, LX2/a;->s:[I

    iget v5, v0, LX2/a;->q:I

    sub-int/2addr v5, v4

    aput v7, v1, v5

    iput v7, v0, LX2/a;->l:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-virtual/range {p0 .. p0}, LX2/a;->g()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static/range {p0 .. p0}, Ll3/q0;->a(LX2/a;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_26
    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v5

    if-ne v5, v3, :cond_27

    move v5, v4

    goto :goto_b

    :cond_27
    move v5, v7

    :goto_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LZ2/l;->m(ZLjava/lang/String;)V

    iget v5, v0, LX2/a;->l:I

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, LX2/a;->c()I

    move-result v5

    :cond_28
    if-ne v5, v2, :cond_29

    iget v2, v0, LX2/a;->q:I

    add-int/lit8 v5, v2, -0x1

    iput v5, v0, LX2/a;->q:I

    iget-object v5, v0, LX2/a;->s:[I

    sub-int/2addr v2, v3

    aget v3, v5, v2

    add-int/2addr v3, v4

    aput v3, v5, v2

    iput v7, v0, LX2/a;->l:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected END_ARRAY but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LX2/a;->t()I

    move-result v3

    invoke-static {v3}, LC/a;->w(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, LX2/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
