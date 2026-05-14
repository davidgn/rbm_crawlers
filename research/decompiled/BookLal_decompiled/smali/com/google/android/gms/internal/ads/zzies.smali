.class final Lcom/google/android/gms/internal/ads/zzies;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzieo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzift;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzico;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzieo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzb:Lcom/google/android/gms/internal/ads/zzift;

    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzicz;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzico;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzieo;)Lcom/google/android/gms/internal/ads/zzies;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzies;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzies;-><init>(Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzieo;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zza:Lcom/google/android/gms/internal/ads/zzieo;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzidd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbg()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzieo;->zzcY()Lcom/google/android/gms/internal/ads/zzien;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzien;->zzbt()Lcom/google/android/gms/internal/ads/zzieo;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzifu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Z

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzics;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifu;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Z

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzics;->zza:Lcom/google/android/gms/internal/ads/zzifn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzifn;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzb:Lcom/google/android/gms/internal/ads/zzift;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzifi;->zzI(Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzico;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzifi;->zzH(Lcom/google/android/gms/internal/ads/zzico;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifu;->zzh()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzies;->zzc:Z

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzics;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzigi;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzics;->zzc()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzicr;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzicr;->zzc()Lcom/google/android/gms/internal/ads/zzigh;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzigh;->zzi:Lcom/google/android/gms/internal/ads/zzigh;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzicr;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzicr;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzidv;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzicr;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzidv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzidv;->zza()Lcom/google/android/gms/internal/ads/zzidx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzidy;->zzc()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzicr;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzifu;->zzf(Lcom/google/android/gms/internal/ads/zzigi;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzicn;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzies;->zzb:Lcom/google/android/gms/internal/ads/zzift;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzift;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzibn;)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifu;->zza()Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifu;->zzb()Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzb:Lcom/google/android/gms/internal/ads/zzift;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzift;->zzj(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzies;->zzd:Lcom/google/android/gms/internal/ads/zzico;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzics;->zze()Z

    move-result p1

    return p1
.end method
