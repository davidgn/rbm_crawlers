.class final Lcom/google/android/gms/internal/ads/zzgig;
.super Lcom/google/android/gms/internal/ads/zzgib;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/util/DisplayMetrics;

.field private final zzb:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 7

    const/16 v0, 0x7c

    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zza(I)Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object v6

    const-string v2, "8I/XlSBeT3tBjLeIE2paC6mF24sLYoafQk4qjTOEZP5H+0OvuAqvRNXoaDeqSNp0"

    const-string v3, "DAAqVAU58Xxt/32HFMBO3QUWO7KAUC03lTF+D65e5O8="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgib;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgpf;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgig;->zza:Landroid/util/DisplayMetrics;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgig;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgig;->zzb:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgig;->zza:Landroid/util/DisplayMetrics;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Long;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxv;->zza()Lcom/google/android/gms/internal/ads/zzaxu;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxu;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxu;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxu;->zzc(J)Lcom/google/android/gms/internal/ads/zzaxu;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxu;->zzd(J)Lcom/google/android/gms/internal/ads/zzaxu;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxu;->zza(J)Lcom/google/android/gms/internal/ads/zzaxu;

    const/4 v1, 0x4

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxu;->zze(J)Lcom/google/android/gms/internal/ads/zzaxu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaww;->zzM(Lcom/google/android/gms/internal/ads/zzaxv;)Lcom/google/android/gms/internal/ads/zzaww;

    return-void
.end method
