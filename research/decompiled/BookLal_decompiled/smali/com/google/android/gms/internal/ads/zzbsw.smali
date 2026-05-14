.class final synthetic Lcom/google/android/gms/internal/ads/zzbsw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsx;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbru;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsx;Lcom/google/android/gms/internal/ads/zzbru;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsw;->zza:Lcom/google/android/gms/internal/ads/zzbsx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsw;->zzb:Lcom/google/android/gms/internal/ads/zzbru;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    const-string v0, "maybeDestroy > Destroying engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsw;->zzb:Lcom/google/android/gms/internal/ads/zzbru;

    const-string v1, "/result"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbou;->zzo:Lcom/google/android/gms/internal/ads/zzbpm;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbta;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbru;->zzj()V

    return-void
.end method
