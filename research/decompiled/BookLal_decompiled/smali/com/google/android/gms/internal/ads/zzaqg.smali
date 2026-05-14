.class public final Lcom/google/android/gms/internal/ads/zzaqg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzags;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgx;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzags;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzc:[Lcom/google/android/gms/internal/ads/zzags;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaqf;-><init>(Lcom/google/android/gms/internal/ads/zzaqg;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Lcom/google/android/gms/internal/ads/zzgw;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzaqr;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzc:[Lcom/google/android/gms/internal/ads/zzags;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zza()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzb()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    :cond_1
    :goto_1
    const-string v6, "Invalid closed caption MIME type provided: %s"

    invoke-static {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzgsj;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzv;->zza:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzc()Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zze:I

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzf(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzL:I

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzK(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final zzb(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(I)V

    return-void
.end method

.method public final zzc(JLcom/google/android/gms/internal/ads/zzes;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgx;->zzc(JLcom/google/android/gms/internal/ads/zzes;)V

    return-void
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgx;->zze()V

    return-void
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzd:Lcom/google/android/gms/internal/ads/zzgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgx;->zze()V

    return-void
.end method

.method public final synthetic zzf(JLcom/google/android/gms/internal/ads/zzes;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzc:[Lcom/google/android/gms/internal/ads/zzags;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaes;->zza(JLcom/google/android/gms/internal/ads/zzes;[Lcom/google/android/gms/internal/ads/zzags;)V

    return-void
.end method
