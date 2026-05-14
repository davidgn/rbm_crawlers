.class public final Lcom/google/android/gms/internal/ads/zzaek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:I

.field public final zzk:F

.field public final zzl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:F

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzaek;
    .locals 15

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaek;->zzb(Lcom/google/android/gms/internal/ads/zzes;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaek;->zzb(Lcom/google/android/gms/internal/ads/zzes;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgo;->zze([BII)Lcom/google/android/gms/internal/ads/zzgn;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzh:I

    add-int/lit8 v2, v2, 0x8

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzi:I

    add-int/lit8 v5, v5, 0x8

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzj:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzk:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzl:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzm:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzg:F

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzgn;->zza:I

    iget v12, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzc:I

    invoke-static {v11, v12, p0}, Lcom/google/android/gms/internal/ads/zzdp;->zzb(III)Ljava/lang/String;

    move-result-object p0

    move-object v14, p0

    move v11, v8

    move v12, v9

    move v13, v10

    move v8, v5

    move v9, v6

    move v10, v7

    move v5, v0

    move v6, v1

    move v7, v2

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move v5, p0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v0

    move-object v14, v1

    move v13, v2

    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaek;

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Ljava/util/List;IIIIIIIIIFLjava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v0, "Error parsing AVC config"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p0

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzes;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdp;->zzg([BII)[B

    move-result-object p0

    return-object p0
.end method
