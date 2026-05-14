.class final synthetic Lcom/google/android/gms/internal/ads/zzcje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafl;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcje;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcje;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcje;->zza:Lcom/google/android/gms/internal/ads/zzcje;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()[Lcom/google/android/gms/internal/ads/zzaff;
    .locals 10

    sget v0, Lcom/google/android/gms/internal/ads/zzcjh;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajs;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzalb;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamt;->zza:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzalb;-><init>(Lcom/google/android/gms/internal/ads/zzamt;ILcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzals;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzags;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzaff;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v9, v2, v0

    return-object v2
.end method
