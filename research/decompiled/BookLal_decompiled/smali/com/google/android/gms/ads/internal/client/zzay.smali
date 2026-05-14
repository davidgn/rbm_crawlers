.class public final Lcom/google/android/gms/ads/internal/client/zzay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/ads/internal/client/zzay;


# instance fields
.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzf;

.field private final zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

.field private zze:Z

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Ljava/util/Random;

.field private final zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zzf;-><init>()V

    new-instance v10, Lcom/google/android/gms/ads/internal/client/zzaw;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzi;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzi;-><init>()V

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzfc;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/client/zzfc;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcbz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcbz;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbyd;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbyd;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbnd;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbnd;-><init>()V

    new-instance v9, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-direct {v9}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>()V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/client/zzaw;-><init>(Lcom/google/android/gms/ads/internal/client/zzk;Lcom/google/android/gms/ads/internal/client/zzi;Lcom/google/android/gms/ads/internal/client/zzfc;Lcom/google/android/gms/internal/ads/zzbnc;Lcom/google/android/gms/internal/ads/zzcbz;Lcom/google/android/gms/internal/ads/zzbyd;Lcom/google/android/gms/internal/ads/zzbnd;Lcom/google/android/gms/ads/internal/client/zzl;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v2, 0xf869c00

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzay;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzf;

    iput-object v10, p0, Lcom/google/android/gms/ads/internal/client/zzay;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/client/zzay;->zze:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzay;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzay;->zzg:Ljava/util/Random;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzay;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/ads/internal/util/client/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzf;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/ads/internal/client/zzaw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    return-object v0
.end method

.method public static zzc()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zze:Z

    return-void
.end method

.method public static zzd()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zze:Z

    return-void
.end method

.method public static zze()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zze:Z

    return v0
.end method

.method public static zzf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public static zzh()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzb:Lcom/google/android/gms/ads/internal/client/zzay;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzay;->zzg:Ljava/util/Random;

    return-object v0
.end method
