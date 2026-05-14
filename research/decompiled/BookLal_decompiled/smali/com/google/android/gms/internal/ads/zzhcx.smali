.class public final Lcom/google/android/gms/internal/ads/zzhcx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhcv;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhco;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhcq;

.field private final zzd:I

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhcv;

.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcw;->zza:Lcom/google/android/gms/internal/ads/zzhcw;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcx;->zza:Lcom/google/android/gms/internal/ads/zzhcv;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhco;IIZZLcom/google/android/gms/internal/ads/zzhcv;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzb:Lcom/google/android/gms/internal/ads/zzhco;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzh:I

    add-int/lit8 p2, p2, -0x2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcq;->zzb:Lcom/google/android/gms/internal/ads/zzhcq;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcq;->zzc:Lcom/google/android/gms/internal/ads/zzhcq;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcq;->zza:Lcom/google/android/gms/internal/ads/zzhcq;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzc:Lcom/google/android/gms/internal/ads/zzhcq;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zze:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzf:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzg:Lcom/google/android/gms/internal/ads/zzhcv;

    return-void
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/ads/zzhcv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcx;->zza:Lcom/google/android/gms/internal/ads/zzhcv;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhco;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzg:Lcom/google/android/gms/internal/ads/zzhcv;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhcv;->zza(Lcom/google/android/gms/internal/ads/zzhcx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzb:Lcom/google/android/gms/internal/ads/zzhco;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhcq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzc:Lcom/google/android/gms/internal/ads/zzhcq;

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzd:I

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zze:Z

    return v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzhco;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzb:Lcom/google/android/gms/internal/ads/zzhco;

    return-object v0
.end method

.method public final synthetic zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzd:I

    return v0
.end method

.method public final synthetic zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zze:Z

    return v0
.end method

.method public final synthetic zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzf:Z

    return v0
.end method

.method public final synthetic zzj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhcx;->zzh:I

    return v0
.end method
