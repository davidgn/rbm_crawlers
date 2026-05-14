.class public final Ln3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Ln3/d;

.field public static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/d;->a:Ln3/d;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/d;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ln3/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ln3/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_11

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto/16 :goto_11

    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ln3/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_4

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v0, v8}, Ln3/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_11

    :cond_3
    add-int/lit8 v7, v7, 0x1

    move v8, v3

    goto :goto_1

    :cond_4
    if-nez v8, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    new-instance v5, Ln3/c;

    invoke-direct {v5, v1}, Ln3/c;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    iput v4, v5, Ln3/c;->c:I

    iput v4, v5, Ln3/c;->d:I

    iput v4, v5, Ln3/c;->e:I

    iput v4, v5, Ln3/c;->f:I

    iget-object v1, v5, Ln3/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, v5, Ln3/c;->g:[C

    invoke-virtual {v5}, Ln3/c;->c()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_5
    :goto_3
    iget v8, v5, Ln3/c;->c:I

    iget v9, v5, Ln3/c;->b:I

    if-ne v8, v9, :cond_6

    goto :goto_2

    :cond_6
    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v10, v10, v8

    const/16 v11, 0x20

    const-string v12, "Unexpected end of DN: "

    const/16 v13, 0x5c

    const/16 v14, 0x22

    const/16 v15, 0x3b

    const/16 v4, 0x2c

    const/16 v7, 0x2b

    if-eq v10, v14, :cond_18

    const/16 v14, 0x23

    if-eq v10, v14, :cond_f

    if-eq v10, v7, :cond_e

    if-eq v10, v4, :cond_e

    if-eq v10, v15, :cond_e

    iput v8, v5, Ln3/c;->d:I

    iput v8, v5, Ln3/c;->e:I

    :goto_4
    iget v8, v5, Ln3/c;->c:I

    if-lt v8, v9, :cond_7

    new-instance v8, Ljava/lang/String;

    iget-object v10, v5, Ln3/c;->g:[C

    iget v11, v5, Ln3/c;->d:I

    iget v12, v5, Ln3/c;->e:I

    sub-int/2addr v12, v11

    invoke-direct {v8, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_d

    :cond_7
    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v12, v10, v8

    if-eq v12, v11, :cond_b

    if-eq v12, v15, :cond_a

    if-eq v12, v13, :cond_9

    if-eq v12, v7, :cond_a

    if-eq v12, v4, :cond_a

    iget v14, v5, Ln3/c;->e:I

    add-int/lit8 v13, v14, 0x1

    iput v13, v5, Ln3/c;->e:I

    aput-char v12, v10, v14

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    :cond_8
    :goto_5
    const/16 v13, 0x5c

    goto :goto_4

    :cond_9
    iget v8, v5, Ln3/c;->e:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v5, Ln3/c;->e:I

    invoke-virtual {v5}, Ln3/c;->b()C

    move-result v12

    aput-char v12, v10, v8

    iget v8, v5, Ln3/c;->c:I

    add-int/2addr v8, v3

    iput v8, v5, Ln3/c;->c:I

    goto :goto_5

    :cond_a
    new-instance v8, Ljava/lang/String;

    iget v11, v5, Ln3/c;->d:I

    iget v12, v5, Ln3/c;->e:I

    sub-int/2addr v12, v11

    invoke-direct {v8, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_d

    :cond_b
    iget v12, v5, Ln3/c;->e:I

    iput v12, v5, Ln3/c;->f:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    add-int/lit8 v8, v12, 0x1

    iput v8, v5, Ln3/c;->e:I

    aput-char v11, v10, v12

    :goto_6
    iget v8, v5, Ln3/c;->c:I

    if-ge v8, v9, :cond_c

    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v12, v10, v8

    if-ne v12, v11, :cond_c

    iget v12, v5, Ln3/c;->e:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v5, Ln3/c;->e:I

    aput-char v11, v10, v12

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    goto :goto_6

    :cond_c
    if-eq v8, v9, :cond_d

    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v8, v10, v8

    if-eq v8, v4, :cond_d

    if-eq v8, v7, :cond_d

    if-ne v8, v15, :cond_8

    :cond_d
    new-instance v8, Ljava/lang/String;

    iget-object v10, v5, Ln3/c;->g:[C

    iget v11, v5, Ln3/c;->d:I

    iget v12, v5, Ln3/c;->f:I

    sub-int/2addr v12, v11

    invoke-direct {v8, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_d

    :cond_e
    const-string v8, ""

    goto/16 :goto_d

    :cond_f
    add-int/lit8 v10, v8, 0x4

    if-ge v10, v9, :cond_17

    iput v8, v5, Ln3/c;->d:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    :goto_7
    iget v8, v5, Ln3/c;->c:I

    if-eq v8, v9, :cond_13

    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v13, v10, v8

    if-eq v13, v7, :cond_13

    if-eq v13, v4, :cond_13

    if-ne v13, v15, :cond_10

    goto :goto_9

    :cond_10
    if-ne v13, v11, :cond_11

    iput v8, v5, Ln3/c;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    :goto_8
    iget v8, v5, Ln3/c;->c:I

    if-ge v8, v9, :cond_14

    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v10, v10, v8

    if-ne v10, v11, :cond_14

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    goto :goto_8

    :cond_11
    const/16 v14, 0x41

    if-lt v13, v14, :cond_12

    const/16 v14, 0x46

    if-gt v13, v14, :cond_12

    add-int/lit8 v13, v13, 0x20

    int-to-char v13, v13

    aput-char v13, v10, v8

    :cond_12
    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    goto :goto_7

    :cond_13
    :goto_9
    iput v8, v5, Ln3/c;->e:I

    :cond_14
    iget v8, v5, Ln3/c;->e:I

    iget v10, v5, Ln3/c;->d:I

    sub-int/2addr v8, v10

    const/4 v11, 0x5

    if-lt v8, v11, :cond_16

    and-int/lit8 v11, v8, 0x1

    if-eqz v11, :cond_16

    div-int/lit8 v11, v8, 0x2

    new-array v12, v11, [B

    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v11, :cond_15

    invoke-virtual {v5, v10}, Ln3/c;->a(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    add-int/2addr v10, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_15
    new-instance v10, Ljava/lang/String;

    iget-object v11, v5, Ln3/c;->g:[C

    iget v12, v5, Ln3/c;->d:I

    invoke-direct {v10, v11, v12, v8}, Ljava/lang/String;-><init>([CII)V

    move-object v8, v10

    goto :goto_d

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    iput v8, v5, Ln3/c;->d:I

    iput v8, v5, Ln3/c;->e:I

    :goto_b
    iget v8, v5, Ln3/c;->c:I

    if-eq v8, v9, :cond_22

    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v13, v10, v8

    if-ne v13, v14, :cond_20

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    :goto_c
    iget v8, v5, Ln3/c;->c:I

    if-ge v8, v9, :cond_19

    iget-object v10, v5, Ln3/c;->g:[C

    aget-char v10, v10, v8

    if-ne v10, v11, :cond_19

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Ln3/c;->c:I

    goto :goto_c

    :cond_19
    new-instance v8, Ljava/lang/String;

    iget-object v10, v5, Ln3/c;->g:[C

    iget v11, v5, Ln3/c;->d:I

    iget v12, v5, Ln3/c;->e:I

    sub-int/2addr v12, v11

    invoke-direct {v8, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    :goto_d
    const-string v10, "cn"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object v7, v8

    goto :goto_e

    :cond_1a
    iget v6, v5, Ln3/c;->c:I

    if-lt v6, v9, :cond_1b

    goto/16 :goto_2

    :goto_e
    if-eqz v7, :cond_23

    invoke-static {v0, v7}, Ln3/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_11

    :cond_1b
    iget-object v8, v5, Ln3/c;->g:[C

    aget-char v8, v8, v6

    const-string v9, "Malformed DN: "

    if-eq v8, v4, :cond_1e

    if-ne v8, v15, :cond_1c

    goto :goto_f

    :cond_1c
    if-ne v8, v7, :cond_1d

    goto :goto_f

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_f
    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Ln3/c;->c:I

    invoke-virtual {v5}, Ln3/c;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1f

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/16 v8, 0x5c

    if-ne v13, v8, :cond_21

    iget v13, v5, Ln3/c;->e:I

    invoke-virtual {v5}, Ln3/c;->b()C

    move-result v16

    aput-char v16, v10, v13

    goto :goto_10

    :cond_21
    iget v2, v5, Ln3/c;->e:I

    aput-char v13, v10, v2

    :goto_10
    iget v2, v5, Ln3/c;->c:I

    add-int/2addr v2, v3

    iput v2, v5, Ln3/c;->c:I

    iget v2, v5, Ln3/c;->e:I

    add-int/2addr v2, v3

    iput v2, v5, Ln3/c;->e:I

    const/4 v2, 0x2

    goto/16 :goto_b

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v3, 0x0

    :goto_11
    return v3
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".."

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const-string v1, "*."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x2a

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    return v0

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v0

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    if-lez v1, :cond_9

    const/16 p1, 0x2e

    sub-int/2addr v1, v3

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    if-eq p0, v4, :cond_9

    return v0

    :cond_9
    return v3

    :cond_a
    :goto_0
    return v0
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Ln3/d;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
