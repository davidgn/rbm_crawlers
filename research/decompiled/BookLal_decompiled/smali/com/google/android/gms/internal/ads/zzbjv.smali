.class public final Lcom/google/android/gms/internal/ads/zzbjv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzh:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzi:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzj:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzk:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzl:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzm:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzn:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzo:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzp:Lcom/google/android/gms/internal/ads/zzbjf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:flags_check_if_updating_v3:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:disable_adapter_flag_shared_pref_listener_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzb:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:disable_flag_shared_pref_listener_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:disable_sdkcore_refresh_client:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzd:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:enable_adapter_flags:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:include_package_name_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzf:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:js_flags:mf"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:js_flags:update_interval"

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbjf;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzh:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:persist_js_flag:ars"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzi:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:persist_js_flag:as"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:persist_js_flag:scar"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzj:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:read_local_flags_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzk:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:read_local_flags_cld_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzl:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:save_flags_on_background_thread:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzm:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:write_local_flags_cld_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzn:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:write_local_flags_client_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzo:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:write_local_flags_service_v3:enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjv;->zzp:Lcom/google/android/gms/internal/ads/zzbjf;

    return-void
.end method
