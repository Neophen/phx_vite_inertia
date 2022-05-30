<script setup lang="ts" name="XLink">
import { Link } from '@inertiajs/inertia-vue3'

const { href } = defineProps<{
  href: string
}>()
</script>

<template>
  <Link
    class="rounded-md border border-primary-500 bg-white px-2 py-1 text-primary-500 hover:bg-primary-100"
    v-bind="$attrs"
    :href="href"
  >
    <slot />
  </Link>
</template>
