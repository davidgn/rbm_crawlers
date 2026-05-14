.class final Lcom/google/android/gms/internal/ads/zzcoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeab;


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcoc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcos;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcos;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzc:Lcom/google/android/gms/internal/ads/zzcoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzd:Lcom/google/android/gms/internal/ads/zzcos;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zza:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeak;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzd:Lcom/google/android/gms/internal/ads/zzcos;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcos;->zzd()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcos;->zza()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzc:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeal;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzcmo;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeak;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzeao;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzd:Lcom/google/android/gms/internal/ads/zzcos;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcos;->zzd()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcos;->zza()Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzc:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeap;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzcmo;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeao;

    move-result-object v0

    return-object v0
.end method
