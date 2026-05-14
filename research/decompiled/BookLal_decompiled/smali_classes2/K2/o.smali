.class public final LK2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final l:LK2/o;


# instance fields
.field public transient a:LK2/l;

.field public transient b:LK2/m;

.field public transient c:LK2/n;

.field public final transient d:Ljava/lang/Object;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK2/o;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, LK2/o;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, LK2/o;->l:LK2/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/o;->d:Ljava/lang/Object;

    iput-object p2, p0, LK2/o;->e:[Ljava/lang/Object;

    iput p3, p0, LK2/o;->f:I

    return-void
.end method

.method public static a(Ljava/util/HashMap;)LK2/o;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x2

    mul-int/2addr v1, v2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    mul-int/2addr v4, v2

    if-le v4, v1, :cond_1

    invoke-static {v1, v4}, La/a;->f(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v4, 0x1

    mul-int/lit8 v9, v8, 0x2

    array-length v10, v3

    if-le v9, v10, :cond_2

    array-length v10, v3

    invoke-static {v10, v9}, La/a;->f(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :cond_2
    if-eqz v7, :cond_4

    if-eqz v5, :cond_3

    mul-int/lit8 v4, v4, 0x2

    aput-object v7, v3, v4

    add-int/2addr v4, v6

    aput-object v5, v3, v4

    move v4, v8

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "null value in entry: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "null key in entry: null="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    if-nez v4, :cond_6

    sget-object v1, LK2/o;->l:LK2/o;

    goto/16 :goto_f

    :cond_6
    if-ne v4, v6, :cond_7

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v3, v6

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LK2/o;

    invoke-direct {v1, v0, v3, v6}, LK2/o;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    goto/16 :goto_f

    :cond_7
    array-length v5, v3

    shr-int/2addr v5, v6

    invoke-static {v4, v5}, LZ2/l;->k(II)V

    invoke-static {v4}, LK2/g;->m(I)I

    move-result v5

    if-ne v4, v6, :cond_8

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    move v0, v2

    goto/16 :goto_d

    :cond_8
    add-int/lit8 v7, v5, -0x1

    const/16 v8, 0x80

    const/4 v9, 0x3

    const/4 v10, -0x1

    if-gt v5, v8, :cond_e

    new-array v5, v5, [B

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    move-object v11, v0

    move v8, v1

    move v10, v8

    :goto_2
    if-ge v8, v4, :cond_c

    mul-int/lit8 v12, v8, 0x2

    mul-int/lit8 v13, v10, 0x2

    aget-object v14, v3, v12

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v6

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, LZ2/l;->V(I)I

    move-result v15

    :goto_3
    and-int/2addr v15, v7

    aget-byte v0, v5, v15

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    int-to-byte v0, v13

    aput-byte v0, v5, v15

    if-ge v10, v8, :cond_9

    aput-object v14, v3, v13

    xor-int/lit8 v0, v13, 0x1

    aput-object v12, v3, v0

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    aget-object v2, v3, v0

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v11, LK2/f;

    xor-int/lit8 v0, v0, 0x1

    aget-object v2, v3, v0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v11, v14, v12, v2}, LK2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v3, v0

    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    goto :goto_2

    :cond_b
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    goto :goto_3

    :cond_c
    if-ne v10, v4, :cond_d

    goto :goto_5

    :cond_d
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v5, v0, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x2

    aput-object v11, v0, v2

    goto/16 :goto_c

    :goto_5
    const/4 v0, 0x2

    goto/16 :goto_d

    :cond_e
    const v0, 0x8000

    if-gt v5, v0, :cond_14

    new-array v0, v5, [S

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([SS)V

    move v2, v1

    move v5, v2

    const/4 v8, 0x0

    :goto_6
    if-ge v2, v4, :cond_12

    mul-int/lit8 v10, v2, 0x2

    mul-int/lit8 v11, v5, 0x2

    aget-object v12, v3, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v10, v6

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, LZ2/l;->V(I)I

    move-result v13

    :goto_7
    and-int/2addr v13, v7

    aget-short v14, v0, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_10

    int-to-short v14, v11

    aput-short v14, v0, v13

    if-ge v5, v2, :cond_f

    aput-object v12, v3, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v10, v3, v11

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    aget-object v15, v3, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    new-instance v8, LK2/f;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v8, v12, v10, v13}, LK2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v3, v11

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_12
    if-ne v5, v4, :cond_13

    goto :goto_c

    :cond_13
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    aput-object v8, v2, v0

    move-object v5, v2

    goto :goto_5

    :cond_14
    new-array v0, v5, [I

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([II)V

    move v2, v1

    move v5, v2

    const/4 v8, 0x0

    :goto_9
    if-ge v2, v4, :cond_18

    mul-int/lit8 v11, v2, 0x2

    mul-int/lit8 v12, v5, 0x2

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v11, v6

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, LZ2/l;->V(I)I

    move-result v14

    :goto_a
    and-int/2addr v14, v7

    aget v15, v0, v14

    if-ne v15, v10, :cond_16

    aput v12, v0, v14

    if-ge v5, v2, :cond_15

    aput-object v13, v3, v12

    xor-int/lit8 v12, v12, 0x1

    aput-object v11, v3, v12

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_16
    aget-object v10, v3, v15

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    new-instance v8, LK2/f;

    xor-int/lit8 v10, v15, 0x1

    aget-object v12, v3, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v8, v13, v11, v12}, LK2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v3, v10

    :goto_b
    add-int/lit8 v2, v2, 0x1

    const/4 v10, -0x1

    goto :goto_9

    :cond_17
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_a

    :cond_18
    if-ne v5, v4, :cond_19

    :goto_c
    move-object v5, v0

    goto/16 :goto_5

    :cond_19
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    aput-object v8, v2, v0

    move-object v5, v2

    :goto_d
    nop

    instance-of v2, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_1a

    check-cast v5, [Ljava/lang/Object;

    aget-object v0, v5, v0

    check-cast v0, LK2/f;

    aget-object v1, v5, v1

    aget-object v2, v5, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v1

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    :goto_e
    new-instance v1, LK2/o;

    invoke-direct {v1, v5, v3, v4}, LK2/o;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    :goto_f
    if-nez v0, :cond_1b

    return-object v1

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, v0, LK2/f;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, LK2/f;->b:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, LK2/f;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x27

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Multiple entries with same key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-static {v5, v4, v2, v3, v0}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LK2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, LK2/o;->c:LK2/n;

    if-nez v0, :cond_0

    new-instance v0, LK2/n;

    const/4 v1, 0x1

    iget v2, p0, LK2/o;->f:I

    iget-object v3, p0, LK2/o;->e:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, LK2/n;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, LK2/o;->c:LK2/n;

    :cond_0
    invoke-virtual {v0, p1}, LK2/e;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, LK2/o;->a:LK2/l;

    if-nez v0, :cond_0

    new-instance v0, LK2/l;

    iget v1, p0, LK2/o;->f:I

    iget-object v2, p0, LK2/o;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, LK2/l;-><init>(LK2/o;[Ljava/lang/Object;I)V

    iput-object v0, p0, LK2/o;->a:LK2/l;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, LK2/o;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast v0, LK2/g;

    invoke-virtual {v0, p1}, LK2/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p1, v0

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, LK2/o;->e:[Ljava/lang/Object;

    iget v3, p0, LK2/o;->f:I

    if-ne v3, v1, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v2, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, LK2/o;->d:Ljava/lang/Object;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v4, v3, [B

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, [B

    array-length v3, v4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, LZ2/l;->V(I)I

    move-result v3

    :goto_1
    and-int/2addr v3, v5

    aget-byte v6, v4, v3

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    goto :goto_0

    :cond_4
    aget-object v7, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v2, p1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    instance-of v4, v3, [S

    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, [S

    array-length v3, v4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, LZ2/l;->V(I)I

    move-result v3

    :goto_2
    and-int/2addr v3, v5

    aget-short v6, v4, v3

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    goto :goto_0

    :cond_7
    aget-object v7, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v2, p1

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    check-cast v3, [I

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, LZ2/l;->V(I)I

    move-result v5

    :goto_3
    and-int/2addr v5, v4

    aget v6, v3, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v7, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v2, p1

    :goto_4
    if-nez p1, :cond_b

    return-object v0

    :cond_b
    return-object p1

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LK2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, LK2/o;->a:LK2/l;

    if-nez v0, :cond_0

    new-instance v0, LK2/l;

    iget v1, p0, LK2/o;->f:I

    iget-object v2, p0, LK2/o;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, LK2/l;-><init>(LK2/o;[Ljava/lang/Object;I)V

    iput-object v0, p0, LK2/o;->a:LK2/l;

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    not-int v2, v2

    not-int v2, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, LK2/o;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, LK2/o;->b:LK2/m;

    if-nez v0, :cond_0

    new-instance v0, LK2/n;

    const/4 v1, 0x0

    iget v2, p0, LK2/o;->f:I

    iget-object v3, p0, LK2/o;->e:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, LK2/n;-><init>([Ljava/lang/Object;II)V

    new-instance v1, LK2/m;

    invoke-direct {v1, p0, v0}, LK2/m;-><init>(LK2/o;LK2/n;)V

    iput-object v1, p0, LK2/o;->b:LK2/m;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LK2/o;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "size"

    iget v1, p0, LK2/o;->f:I

    invoke-static {v1, v0}, LS4/b;->h(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LK2/o;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, LK2/l;

    invoke-virtual {v1}, LK2/l;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, LK2/o;->c:LK2/n;

    if-nez v0, :cond_0

    new-instance v0, LK2/n;

    const/4 v1, 0x1

    iget v2, p0, LK2/o;->f:I

    iget-object v3, p0, LK2/o;->e:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, LK2/n;-><init>([Ljava/lang/Object;II)V

    iput-object v0, p0, LK2/o;->c:LK2/n;

    :cond_0
    return-object v0
.end method
