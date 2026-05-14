.class public final Lcom/google/android/gms/internal/ads/zzhcz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhky;


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhlg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhcz;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhlg;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzb:Lcom/google/android/gms/internal/ads/zzhlg;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhjq;->zza:Lcom/google/android/gms/internal/ads/zzhjr;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/HashSet;

    .line 4
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhcx;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzd()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x79

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "KeyID "

    const-string v2, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    .line 11
    invoke-static {v1, v0, p2, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzc:Lcom/google/android/gms/internal/ads/zzhcz;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhcz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzb:Lcom/google/android/gms/internal/ads/zzhlg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzc:Lcom/google/android/gms/internal/ads/zzhcz;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhlg;[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhcz;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhlg;)V

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/ads/zzhsa;)Lcom/google/android/gms/internal/ads/zzhcz;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsa;->zzc()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzi(Lcom/google/android/gms/internal/ads/zzhsa;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlg;->zza:Lcom/google/android/gms/internal/ads/zzhlg;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhcz;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhlg;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/ads/zzhde;)Lcom/google/android/gms/internal/ads/zzhcz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhcu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhcs;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhcs;-><init>(Lcom/google/android/gms/internal/ads/zzhde;[B)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zzb()Lcom/google/android/gms/internal/ads/zzhcs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcs;->zza()Lcom/google/android/gms/internal/ads/zzhcs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcu;->zza(Lcom/google/android/gms/internal/ads/zzhcs;)Lcom/google/android/gms/internal/ads/zzhcu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhcu;->zzb()Lcom/google/android/gms/internal/ads/zzhcz;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzhcz;)Lcom/google/android/gms/internal/ads/zzhcz;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzb:Lcom/google/android/gms/internal/ads/zzhlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlg;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhcy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhcy;-><init>(Lcom/google/android/gms/internal/ads/zzhcz;Lcom/google/android/gms/internal/ads/zzhlg;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhcx;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzf()Lcom/google/android/gms/internal/ads/zzhco;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzj()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzg()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzh()Z

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzi()Z

    move-result v7

    const/4 v9, 0x0

    move-object v2, v12

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzhcx;-><init>(Lcom/google/android/gms/internal/ads/zzhco;IIZZLcom/google/android/gms/internal/ads/zzhcv;[B)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhcz;

    invoke-direct {v1, v10, v0, p0}, Lcom/google/android/gms/internal/ads/zzhcz;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhcz;)V

    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzhsa;)Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsa;->zzc()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsa;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhrz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzk(Lcom/google/android/gms/internal/ads/zzhrz;)Lcom/google/android/gms/internal/ads/zzhmq;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdi;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v8

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzhlv;->zzf(Lcom/google/android/gms/internal/ads/zzhmv;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhld;

    invoke-direct {v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzhld;-><init>(Lcom/google/android/gms/internal/ads/zzhmq;Lcom/google/android/gms/internal/ads/zzhdi;)V

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzhlv;->zzg(Lcom/google/android/gms/internal/ads/zzhmv;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhco;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v8, v4

    move-object v5, v7

    goto :goto_3

    :goto_2
    sget-object v7, Lcom/google/android/gms/internal/ads/zzhjq;->zza:Lcom/google/android/gms/internal/ads/zzhjr;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhld;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzk(Lcom/google/android/gms/internal/ads/zzhrz;)Lcom/google/android/gms/internal/ads/zzhmq;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdi;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzhld;-><init>(Lcom/google/android/gms/internal/ads/zzhmq;Lcom/google/android/gms/internal/ads/zzhdi;)V

    move v8, v3

    :goto_3
    sget-object v7, Lcom/google/android/gms/internal/ads/zzhjq;->zza:Lcom/google/android/gms/internal/ads/zzhjr;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzk()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzhcz;->zzl(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_4
    new-instance v11, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzk()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhsa;->zza()I

    move-result v7

    if-ne v6, v7, :cond_3

    move v7, v3

    goto :goto_5

    :cond_3
    move v7, v4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcx;->zze()Lcom/google/android/gms/internal/ads/zzhcv;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v11

    move-object v4, v5

    move v5, v2

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzhcx;-><init>(Lcom/google/android/gms/internal/ads/zzhco;IIZZLcom/google/android/gms/internal/ads/zzhcv;[B)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    throw v5

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzj()Lcom/google/android/gms/internal/ads/zzhcz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzc:Lcom/google/android/gms/internal/ads/zzhcz;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzhrz;)Lcom/google/android/gms/internal/ads/zzhmq;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsn;->zzd:Lcom/google/android/gms/internal/ads/zzhsn;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb()Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhrr;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb()Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrr;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb()Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhrr;->zzc()Lcom/google/android/gms/internal/ads/zzhrq;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhrz;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object p0

    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzhmq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zzhsn;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhmq;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(I)Z
    .locals 2

    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzb()Lcom/google/android/gms/internal/ads/zzhsa;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzhdl;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhse;->zza()Lcom/google/android/gms/internal/ads/zzhsb;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsa;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(I)Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsa;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhrz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsd;->zza()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb()Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhrr;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhsc;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzk()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhsc;->zzd(I)Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhsc;->zzc(Lcom/google/android/gms/internal/ads/zzhsn;)Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzhsc;->zzb(I)Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhsd;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhsa;
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhsa;->zzh()Lcom/google/android/gms/internal/ads/zzhrx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zza()Lcom/google/android/gms/internal/ads/zzhco;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzj()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()I

    move-result v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhlv;

    move-result-object v6

    const-class v7, Lcom/google/android/gms/internal/ads/zzhmq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdi;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzhlv;->zzh(Lcom/google/android/gms/internal/ads/zzhco;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhmv;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhmq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhco;->zzb()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Wrong ID set for key with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrz;->zze()Lcom/google/android/gms/internal/ads/zzhry;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrr;->zzd()Lcom/google/android/gms/internal/ads/zzhrp;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhmq;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhrp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhrp;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhmq;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhrp;->zzb(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzhrp;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhmq;->zzc()Lcom/google/android/gms/internal/ads/zzhrq;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzhrp;->zzc(Lcom/google/android/gms/internal/ads/zzhrq;)Lcom/google/android/gms/internal/ads/zzhrp;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzhry;->zzb(Lcom/google/android/gms/internal/ads/zzhrp;)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhry;->zze(I)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzhry;->zzc(I)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhmq;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhry;->zzd(Lcom/google/android/gms/internal/ads/zzhsn;)Lcom/google/android/gms/internal/ads/zzhry;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhrz;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhrx;->zzb(Lcom/google/android/gms/internal/ads/zzhrz;)Lcom/google/android/gms/internal/ads/zzhrx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzd()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhrx;->zza(I)Lcom/google/android/gms/internal/ads/zzhrx;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhsa;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhnb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhnb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhcx;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhcx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzb()Lcom/google/android/gms/internal/ads/zzhcq;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhcq;->zza:Lcom/google/android/gms/internal/ads/zzhcq;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has primary which isn\'t enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has no valid primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzhcx;
    .locals 5

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzd()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzj()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzl(I)Z

    move-result v2

    const-string v3, "Keyset-Entry at position "

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzi()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhcx;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " didn\'t parse correctly"

    invoke-static {v2, v3, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " has wrong status"

    invoke-static {v2, v3, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzd()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    const-string v3, " for keyset of size "

    invoke-static {v4, v2, p1, v3, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzhcl;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzhkm;

    if-eqz v1, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhkm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzj()Lcom/google/android/gms/internal/ads/zzhcz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhcz;->zzb()Lcom/google/android/gms/internal/ads/zzhsa;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzhdl;->zza:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsa;->zza()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsa;->zzb()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v7, v0

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzhrz;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzk()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zza()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzhsn;->zza:Lcom/google/android/gms/internal/ads/zzhsn;

    if-eq v9, v10, :cond_5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzk()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result v9

    if-ne v9, v2, :cond_2

    if-nez v6, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset contains multiple primary keys"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb()Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrr;->zzc()Lcom/google/android/gms/internal/ads/zzhrq;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhrq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    if-eq v8, v9, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v0

    :goto_2
    and-int/2addr v7, v8

    add-int/2addr v5, v0

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "key %d has unknown status"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "key %d has unknown prefix"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhrz;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "key %d has no key data"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v5, :cond_c

    if-nez v6, :cond_9

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzd()I

    move-result v2

    if-ge v4, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhcx;->zzi()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhcx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhcx;->zzj()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcz;->zzl(I)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/2addr v4, v0

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzhsa;->zzd(I)Lcom/google/android/gms/internal/ads/zzhrz;

    move-result-object p1

    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb()Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhrr;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Key parsing of key with index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and type_url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed, unable to get primitive"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzj()Lcom/google/android/gms/internal/ads/zzhcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhcz;->zzb:Lcom/google/android/gms/internal/ads/zzhlg;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhkm;->zza(Lcom/google/android/gms/internal/ads/zzhky;Lcom/google/android/gms/internal/ads/zzhlg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset must contain at least one ENABLED key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
